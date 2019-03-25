load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "build_link",
    exports = [
        "//external:jar/com/typesafe/play/build_link",
        ":play_exceptions"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "cachecontrol_2_12",
    exports = [
        "//3rdparty/jvm/joda_time:joda_time",
        "//3rdparty/jvm/org/joda:joda_convert",
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        "//external:jar/com/typesafe/play/cachecontrol_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "filters_helpers",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play"
    ],
    jars = [
        "//external:jar/com/typesafe/play/filters_helpers_2_12"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
    name = "play",
    exports = [
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_annotations",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_core",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_databind",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jdk8",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jsr310",
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/typesafe/akka:akka_actor_2_12",
        "//3rdparty/jvm/com/typesafe/akka:akka_slf4j_2_12",
        "//3rdparty/jvm/com/typesafe:ssl_config_core_2_12",
        "//3rdparty/jvm/io/jsonwebtoken:jjwt",
        "//3rdparty/jvm/javax/inject:javax_inject",
        "//3rdparty/jvm/javax/transaction:jta",
        "//3rdparty/jvm/javax/xml/bind:jaxb_api",
        "//3rdparty/jvm/org/scala_lang/modules:scala_java8_compat_2_12",
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//3rdparty/jvm/org/slf4j:jcl_over_slf4j",
        "//3rdparty/jvm/org/slf4j:jul_to_slf4j",
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        ":build_link",
        ":play_json_2_12",
        ":play_streams_2_12",
        ":twirl_api_2_12"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_2_12"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
    name = "play_ahc_ws",
    exports = [
        "//3rdparty/jvm/javax/cache:cache_api",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play_ahc_ws_standalone_2_12",
        ":play_ws",
        ":shaded_asynchttpclient",
        ":shaded_oauth"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_ahc_ws_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_ahc_ws_standalone_2_12",
    exports = [
        "//3rdparty/jvm/org/reactivestreams:reactive_streams",
        "//3rdparty/jvm/org/scala_lang/modules:scala_java8_compat_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        "//external:jar/com/typesafe/play/play_ahc_ws_standalone_2_12",
        ":cachecontrol_2_12",
        ":play_ws_standalone_2_12",
        ":shaded_asynchttpclient",
        ":shaded_oauth"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_akka_http_server",
    exports = [
        "//3rdparty/jvm/com/typesafe/akka:akka_http_core_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play_server",
        ":play_streams_2_12"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_akka_http_server_2_12"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "play_exceptions",
    exports = [
        "//external:jar/com/typesafe/play/play_exceptions"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_functional_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_functional_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_guice",
    exports = [
        "//3rdparty/jvm/com/google/inject/extensions:guice_assistedinject",
        "//3rdparty/jvm/com/google/inject:guice",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_guice_2_12"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "play_json_2_12",
    exports = [
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_annotations",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_core",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_databind",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jdk8",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jsr310",
        "//3rdparty/jvm/joda_time:joda_time",
        "//3rdparty/jvm/org/scala_lang/modules:scala_collection_compat_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//3rdparty/jvm/org/typelevel:macro_compat_2_12",
        "//external:jar/com/typesafe/play/play_json_2_12",
        ":play_functional_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_logback",
    exports = [
        "//3rdparty/jvm/ch/qos/logback:logback_classic",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_logback_2_12"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
    name = "play_netty_server",
    exports = [
        "//3rdparty/jvm/com/typesafe/netty:netty_reactive_streams_http",
        "//3rdparty/jvm/io/netty:netty_transport_native_epoll_jar_linux_x86_64",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play_server"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_netty_server_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_server",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_server_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_streams_2_12",
    exports = [
        "//3rdparty/jvm/com/typesafe/akka:akka_stream_2_12",
        "//3rdparty/jvm/org/reactivestreams:reactive_streams",
        "//3rdparty/jvm/org/scala_lang/modules:scala_java8_compat_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_streams_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_test",
    exports = [
        "//3rdparty/jvm/ch/qos/logback:logback_classic",
        "//3rdparty/jvm/com/google/code/findbugs:jsr305",
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/google/inject/extensions:guice_assistedinject",
        "//3rdparty/jvm/com/google/inject:guice",
        "//3rdparty/jvm/com/novocode:junit_interface",
        "//3rdparty/jvm/junit:junit",
        "//3rdparty/jvm/org/fluentlenium:fluentlenium_core",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/seleniumhq/selenium:htmlunit_driver",
        "//3rdparty/jvm/org/seleniumhq/selenium:selenium_api",
        "//3rdparty/jvm/org/seleniumhq/selenium:selenium_firefox_driver",
        "//3rdparty/jvm/org/seleniumhq/selenium:selenium_support",
        ":play_akka_http_server",
        ":play_guice",
        ":play_netty_server"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_test_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_ws",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play",
        ":play_ws_standalone_2_12",
        ":play_ws_standalone_json_2_12",
        ":play_ws_standalone_xml_2_12"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_ws_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_ws_standalone_2_12",
    exports = [
        "//3rdparty/jvm/com/typesafe/akka:akka_stream_2_12",
        "//3rdparty/jvm/com/typesafe:ssl_config_core_2_12",
        "//3rdparty/jvm/javax/inject:javax_inject",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_ws_standalone_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_ws_standalone_json_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_ws_standalone_json_2_12",
        ":play_json_2_12",
        ":play_ws_standalone_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_ws_standalone_xml_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang/modules:scala_xml_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_ws_standalone_xml_2_12",
        ":play_ws_standalone_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "routes_compiler",
    exports = [
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":twirl_api_2_12"
    ],
    jars = [
        "//external:jar/com/typesafe/play/routes_compiler_2_12"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "shaded_asynchttpclient",
    exports = [
        "//external:jar/com/typesafe/play/shaded_asynchttpclient"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "shaded_oauth",
    exports = [
        "//external:jar/com/typesafe/play/shaded_oauth"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "twirl_api_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang/modules:scala_xml_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/twirl_api_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


