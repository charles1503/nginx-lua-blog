local template = require "resty.template"
local model = {
				title = "示例博客"
			  }
-- 方式1、外部模板文件
-- #设置模板文件目录  不设置的话只能输出模板文件名 
-- set $template_root /Users/charles/work/openresty/lua_script/blog/;
template.render('article.tpl', model)

-- 方式2、内嵌模板代码
-- template.render([[
-- <html>
-- <head>
--     <meta charset="UTF-8">
--     <title>{{ title }}</title>
-- </head>
-- <body>
--     {* content *}
-- </body>
-- </html>]], model)