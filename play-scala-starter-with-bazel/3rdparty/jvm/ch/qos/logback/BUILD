load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "logback_classic",
    exports = [
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        "//external:jar/ch/qos/logback/logback_classic",
        ":logback_core"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "logback_core",
    exports = [
        "//external:jar/ch/qos/logback/logback_core"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


