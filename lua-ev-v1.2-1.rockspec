-- This file was automatically generated for the LuaDist project.

package = "lua-ev"
version = "v1.2-1"

-- LuaDist source
source = {
  tag = "v1.2-1",
  url = "git://github.com/LuaDist-testing/lua-ev.git"
}
-- Original source
-- source = {
--    url = "http://github.com/downloads/brimworks/lua-ev/lua-ev-v1.2.tar.gz"
-- }

description = {
   summary = "Lua integration with libev",
   detailed = [[
      lua-ev: Lua integration with libev (http://dist.schmorp.de/libev)
   ]],
   homepage = "http://github.com/brimworks/lua-ev",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1"
}

external_dependencies = {
   LIBEV = {
      header = "ev.h",
      library = "libev.so"
   }
}

build = {
   type = "builtin",
   modules = {
      ev = {
         sources = {
            "lua_ev.c"
         },
         libraries = {
            "ev"
         }
      }
   }
}