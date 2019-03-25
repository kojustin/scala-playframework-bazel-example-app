load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "htmlunit_driver",
    exports = [
        "//3rdparty/jvm/net/sourceforge/htmlunit:htmlunit",
        "//external:jar/org/seleniumhq/selenium/htmlunit_driver",
        ":selenium_api",
        ":selenium_support"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_api",
    exports = [
        "//external:jar/org/seleniumhq/selenium/selenium_api"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_chrome_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_chrome_driver",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_edge_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_edge_driver",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_firefox_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_firefox_driver",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_ie_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_ie_driver",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_java",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_java",
        ":selenium_api",
        ":selenium_chrome_driver",
        ":selenium_edge_driver",
        ":selenium_firefox_driver",
        ":selenium_ie_driver",
        ":selenium_opera_driver",
        ":selenium_remote_driver",
        ":selenium_safari_driver",
        ":selenium_support"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_opera_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_opera_driver",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_remote_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_remote_driver",
        ":selenium_api"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_safari_driver",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_safari_driver",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_support",
    exports = [
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/squareup/okhttp3:okhttp",
        "//3rdparty/jvm/com/squareup/okio:okio",
        "//3rdparty/jvm/net/bytebuddy:byte_buddy",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_support",
        ":selenium_api",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


