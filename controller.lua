local template = require "resty.template"
local data_loader = require "data_loader"
-- 请求方法  GET|POST|PUT|DELETE
request_method = ngx.var.request_method

-- 请求URL
url_address = string.format('%s://%s:%d%s',ngx.var.scheme,ngx.var.host,ngx.var.server_port,ngx.var.request_uri)
if ngx.var.server_port == '80' then
	url_address = string.format('%s://%s%s',ngx.var.scheme,ngx.var.host,ngx.var.request_uri)
end

menu_data = {
		{link = "/index", text = "首页", icon_style = "fa fa-home", active = true},
		{link = "/archives", text = "归档", icon_style = "fa fa-archive", active = false},
	}

active_menu, content_data = data_loader.load_content(ngx.var.request_uri)

for _, menu in ipairs(menu_data) do
	if menu.link == active_menu then
		menu.active = true
	else 
		menu.active = false
	end
end

local data = {
	-- 分享链接 
	share_url = url_address,
	-- 页面 title
	title = content_data.page_title,
	-- 菜单
	menus = menu_data,
	-- 正文内容
	contents = content_data,
	-- 分类列表
	categories = data_loader.load_categories(),
	-- 标签列表
	tags = data_loader.load_tags(),
	-- 最近文章
	recent_articles = data_loader.load_recent_articles()
}

template.render('layout.tpl', data)