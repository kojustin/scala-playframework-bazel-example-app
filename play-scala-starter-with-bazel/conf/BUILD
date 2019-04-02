# Build file

load("@rules_routes_compiler//play-routes:play-routes.bzl", "play_routes")

play_routes(
    name = "example_routes",
    srcs = ["routes"],
    generate_reverse_router = True,
    include_play_imports = True,
    routes_imports = [],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "example_resources"
    srcs = ["application.conf", "logback.xml"],
    visibility = ["//visibility:public"],
)
