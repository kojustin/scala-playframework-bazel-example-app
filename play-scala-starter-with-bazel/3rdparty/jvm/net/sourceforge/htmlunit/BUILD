load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "htmlunit",
    exports = [
        "//3rdparty/jvm/commons_io:commons_io",
        "//3rdparty/jvm/commons_logging:commons_logging",
        "//3rdparty/jvm/commons_net:commons_net",
        "//3rdparty/jvm/org/apache/commons:commons_lang3",
        "//3rdparty/jvm/org/apache/commons:commons_text",
        "//3rdparty/jvm/org/apache/httpcomponents:httpmime",
        "//3rdparty/jvm/org/eclipse/jetty/websocket:websocket_client",
        "//3rdparty/jvm/xalan:xalan",
        "//external:jar/net/sourceforge/htmlunit/htmlunit",
        ":htmlunit_core_js",
        ":htmlunit_cssparser",
        ":neko_htmlunit"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "htmlunit_core_js",
    exports = [
        "//external:jar/net/sourceforge/htmlunit/htmlunit_core_js"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "htmlunit_cssparser",
    exports = [
        "//external:jar/net/sourceforge/htmlunit/htmlunit_cssparser"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "neko_htmlunit",
    exports = [
        "//3rdparty/jvm/xerces:xercesImpl",
        "//external:jar/net/sourceforge/htmlunit/neko_htmlunit"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


