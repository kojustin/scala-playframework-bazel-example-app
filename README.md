# <a name="title">Scala + PlayFramework + Bazel Example Application</a>

**Table of Contents:**

- [Overview](#overview)
- [Fetching Dependencies](#deps)
- [Compiling Play Routes](#routes)
- [Motivation](#motivation)

### <a name="overview">Overview</a>

This repository demonstrates migrate a Scala 2.12 application based on the Play
Framework, version 2.7.0 from sbt 1.2.8 to [Bazel][bazel] 0.23.2. This is an
experiment in documenting and porting all the sbt based workflows you would
typically have for a Play app to a Bazel-based project. This might be
interesting to you if have a project written in Scala + Play + sbt, but are
[frustrated with sbt][frustrated].

[bazel]: https://bazel.build
[frustrated]: http://www.lihaoyi.com/post/SowhatswrongwithSBT.html

Bazel has support for building Scala, and there are some other projects to show
how the individual parts of a Play application could be built, but there wasn't
a complete, working example showing how all the pieces fit together and
documenting how they work.


The [Play Scala Starter application][starter] demonstrates the basics of how to
integrate

- Scala 2.12.8
- Play Framework 2.7.0
- sbt 1.2.8

into an application. Commit [`c1814cc`][commit] of the 2.7.x branch of that
repo was imported into into [`play-scala-starter-example/`][example]. That
directory is the root of an sbt project. The corresponding Bazel port of
project is in the directory [`play-scala-starter-with-bazel/`][with-bazel] and
was tested with *Bazel 0.23.2*.

[commit]: https://github.com/playframework/play-scala-starter-example/commit/c1814cc12ef7bc7385563719fd080fe7e6ebd15d
[starter]: https://github.com/playframework/play-scala-starter-example
[example]: https://github.com/kojustin/scala-playframework-bazel-example-app//tree/master/play-scala-starter-example
[with-bazel]: https://github.com/kojustin/scala-playframework-bazel-example-app//tree/master/play-scala-starter-with-bazel

The rest of this document describes the major areas where your sbt and Bazel
workflows will diverge.

## <a name="deps">Fetching Dependencies</a>
sbt comes with a built-in dependency fetching mechanism. As part of the build
process sbt will evaluate all of your dependencies, and their dependencies,
transitively, until it comes up with the total set of all dependencies. It will
then fetch them for you.

The Bazel philosophy is different, it will not automatically fetch dependencies
for you and resolve the relationships between them. In fact, if it did so, it
might be going against the spirit of Bazel (monorepo containing all
dependencies, built from source).

Obviously, for most projects trying to build all dependencies from source is
not a reasonable thing to do. When dealing with JVM/Maven dependencies, we can
use [bazel-deps][bazel-deps] to discover transtivie dependencies and resolve
version conflicts in  Maven artifacts for us (bazel-deps uses coursier under
the hood). You run it outside of Bazel and it produces number of Bazel targets
that you then integrate into your build. The actual fetching of the artifacts
is performed by Bazel. 

[bazel-deps]: https://github.com/johnynek/bazel-deps

There are also a few other projects that provide resolution and integration of
maven dependencies into Bazel projects. There is a Bazel native rule to
download a single Maven JAR, [`maven_jar`][mavenjar]. This rule doesn't do
transtive fetching.

[mavenjar]: https://docs.bazel.build/versions/master/be/workspace.html#maven_jar

*When you want to add a new dependency or update a dependency*

With sbt:

1. Edit `libraryDependencies` for the project
2. `sbt reload` tell sbt about your new dependencies.
3. `compile` your sbt project, and at that point it would use ivy/coursier to
   find JARs on Maven Central, find dependencies between them, and fetch them
   into your local ivy and coursier cached directories (`~/.ivy2` and
   `~/.coursier`).

With bazel-deps:

1. Edit your `dependencies.yaml` file in your project
2. Run `gen_maven_deps.sh generate` from bazel-deps on your project. This
   performs dependency discovery and writes out a set of Bazel build files
   capturing all of the JARs that need to be downloaded and the relationships
   between them. These files need to be `load()`ed into your Bazel build. This
   process uses coursier so you get the same resolution behavior that you would
   get with sbt + the coursier plugin.
3. When you `bazel build` your project, any artifacts that are not available
   locally are downloaded by Bazel. No dependency discovery or walking happens
   here.

Currently, there is not an easy way to depend on bazel-deps or import into
another Bazel project. You'll need to clone the repository to your local
machine to some path, say `BAZEL_DEPS`.

```bash
cd $BAZEL_DEPS
bazel build //:parse
```

This builds the bazel-deps binary tool. Now run the tool against
[`dependencies.yml`][depyaml] in the bazel version directory. The tool will
create a set of Bazel build definition files in the `3rdparty` directory and it
will create the `3rdparty/workspace.bzl` file. The location of generated BUILD
files, the workspace file, etc. can all be configured by settings in the 
`dependencies.yaml` file, see the documentation in there and in the bazel-deps
project.

[depyaml]: https://github.com/kojustin/scala-playframework-bazel-example-app//tree/master/play-scala-starter-with-bazel/dependencies.yaml

```bash
cd play-scala-starter-with-bazel/
$BAZEL_DEPS/gen_maven_deps.sh generate -r $(pwd) -s 3rdparty/workspace.bzl -d dependencies.yml
```

## <a name="routes">Compiling Play Routes</a>
The [sbt play plugin][playbs] integrates a lot of functionality into the build
environment. It automatically compiles routes files into Scala code that the
Scala compiler can build with.

[playbs]: https://www.playframework.com/documentation/2.7.x/BuildOverview

The Play Framework codebase contains some code to compile routes files into
Scala code. There are a [few][lucid] [different][diff] approaches to integrating
that compiler with Bazel.

[lucid]: https://github.com/lucidsoftware/rules_play_routes
[diff]: https://github.com/thundergolfer/rules_play_routes

Currently, there is not an easy way to depend on `rules_play_routes` in another
Bazel project. You'll need to clone the repository to your local machine to
some path, say `BAZEL_DEPS`.

```bash
cd $BAZEL_DEPS
bazel build //:parse
```



## <a name="motivation">Motivation</a>

**Why?** Scala and Play Framework are a great combination to build on top of.
However, the Scala language ecosystem has standardized on sbt as the build
tool, but it has some significant shortcomings. It would be nice to be able to
use Scala/Play while being able to get the benefits of Bazel as a build system.

**The Problem:** Play tightly integrates into sbt. It provides an sbt plugin and
even goes so far as to call this integration the ["Play build system"][playbs].
The sbt plugin does a lot for the user such as resolving the relationships
between and fetching all library dependencies, providing template and routes
compilers, and providing a hot-reload environment for interactive testing.


There is a [Gradle plugin for Play][gradle] but it's currently "incubating".

[gradle]: https://docs.gradle.org/current/userguide/play_plugin.html

For someone trying to port an Scala/Play/sbt project to Bazel the main
difficulties will be dealing with dependencies and


**More References:**

- [Anatomy of a simple Play application's][anatomy]: source file layout of a
  simple Play application.
- [play-scala-rest-api-example-2.5.x-bazel][akashdayal]: a previous example of
  a simple Play application building with Bazel, unmaintained and no longer
  builds.

[anatomy]: https://www.playframework.com/documentation/2.7.x/Anatomy
[akashdayal]: https://github.com/akashdayal/play-scala-rest-api-example-2.5.x-bazel
