#!/usr/bin/env lua

package = 'lua-http-parser'
version = '1.0-1'
source  = {
    dir = 'brimworks-lua-http-parser-4859974',
    url = 'https://nodeload.github.com/brimworks/lua-http-parser/zipball/v1.0?_=.zip'
}
description = {
    summary  = "A Lua binding to Ryan Dahl's http request/response parser.",
    detailed = '',
    homepage = 'http://github.com/brimworks/lua-http-parser',
    license  = 'MIT', --as with Ryan's
}
dependencies = {
    'lua >= 5.1'
}
build    = {
    type = 'cmake',
    variables = {
        INSTALL_CMOD      = "$(LIBDIR)",
        CMAKE_BUILD_TYPE  = "$(CMAKE_BUILD_TYPE)",
        ["CFLAGS:STRING"] = "$(CFLAGS)",
    },
}