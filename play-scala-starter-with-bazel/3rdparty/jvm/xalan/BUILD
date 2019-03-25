load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "serializer",
    exports = [
        "//external:jar/xalan/serializer"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "xalan",
    exports = [
        "//external:jar/xalan/xalan",
        ":serializer"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


