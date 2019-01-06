# nginx-lua-blog
使用OpenResty编写的一个简易博客

编写环境:
+ MacOS
+ [OpenResty](https://openresty.org/cn/)

使用插件:
+ [lua-resty-template](https://github.com/bungle/lua-resty-template)

界面风格参考:
+ [Hexo 主题列表](https://github.com/hexojs/hexo/wiki/Themes)
+ [Maupassant主题](https://github.com/tufu9441/maupassant-hexo)
+ [屠夫9441的博客](https://www.haomwei.com/)

配置运行:
````
1. clone https://github.com/charles1503/nginx-lua-blog.git

2. cp -r nginx-lua-blog/* /Users/charles/work/openresty/lua_script/

3. vi /Users/charles/work/openresty/nginx/conf/nginx.conf 新增 
    lua_package_path "/Users/charles/work/openresty/lua_script/?.lua;;";
    lua_code_cache off; #禁用lua缓存 会出现警告 nginx: [alert] lua_code_cache is off; this will hurt performance
    server {
        listen       80; 
        #设置模板文件目录  不设置的话只能输出模板文件名(不能设置相对路径?) 
        set $template_root /Users/charles/work/openresty/lua_script/blog/;
    
        location / {
            root   html;
            default_type "text/html; charset=utf-8";
            content_by_lua_file ../lua_script/controller.lua;
        }
    
        location ~ \.blog$ {
            root   html;
            default_type "text/html; charset=utf-8";
            content_by_lua_file ../lua_script/controller.lua;
        }
        #处理静态资源
        location ~ .*\.(ico|gif|jpg|jpeg|png|bmp|swf|js|css|map|woff2|woff|ttf)$
        { 
            root ../lua_script/blog;
            #access_log off;
            #if (-f $request_filename) {
            #    #设置过期时间
            #    expires 7d;
            #    break;
            #}
        }
    }
 
4.运行nginx 
    /Users/charles/work/openresty/nginx/sbin/nginx
