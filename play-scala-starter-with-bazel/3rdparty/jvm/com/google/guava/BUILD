load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "failureaccess",
    exports = [
        "//external:jar/com/google/guava/failureaccess"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "guava",
    exports = [
        "//3rdparty/jvm/com/google/code/findbugs:jsr305",
        "//3rdparty/jvm/com/google/errorprone:error_prone_annotations",
        "//3rdparty/jvm/com/google/j2objc:j2objc_annotations",
        "//3rdparty/jvm/org/checkerframework:checker_qual",
        "//3rdparty/jvm/org/codehaus/mojo:animal_sniffer_annotations",
        "//external:jar/com/google/guava/guava",
        ":failureaccess",
        ":listenablefuture"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "listenablefuture",
    exports = [
        "//external:jar/com/google/guava/listenablefuture"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


