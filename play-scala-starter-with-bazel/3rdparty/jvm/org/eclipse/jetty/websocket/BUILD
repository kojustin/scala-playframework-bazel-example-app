load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "websocket_api",
    exports = [
        "//external:jar/org/eclipse/jetty/websocket/websocket_api"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "websocket_client",
    exports = [
        "//3rdparty/jvm/org/eclipse/jetty:jetty_client",
        "//3rdparty/jvm/org/eclipse/jetty:jetty_io",
        "//3rdparty/jvm/org/eclipse/jetty:jetty_util",
        "//3rdparty/jvm/org/eclipse/jetty:jetty_xml",
        "//external:jar/org/eclipse/jetty/websocket/websocket_client",
        ":websocket_common"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "websocket_common",
    exports = [
        "//3rdparty/jvm/org/eclipse/jetty:jetty_io",
        "//3rdparty/jvm/org/eclipse/jetty:jetty_util",
        "//external:jar/org/eclipse/jetty/websocket/websocket_common",
        ":websocket_api"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


