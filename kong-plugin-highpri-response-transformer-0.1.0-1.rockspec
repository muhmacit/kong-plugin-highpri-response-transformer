package = "kong-plugin-highpri-response-transformer"

version = "0.1.0-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms= {"linux", "macosx"}

source = {
   url = "http://github.com/Kong/kong-plugin.git",
   tag = "0.1.0"
}

description = {
   summary = "response-transformer plugin with priority set to 902",
   homepage = "http://getkong.org",
   license = "Apache 2.0"
}

dependencies = {
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
      ["kong.plugins."..pluginName..".body_transformer"] = "kong/plugins/"..pluginName.."/body_transformer.lua",
      ["kong.plugins."..pluginName..".header_transformer"] = "kong/plugins/"..pluginName.."/header_transformer.lua",
      ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
   }
}
