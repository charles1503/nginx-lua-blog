-- 文章评论数
local function query_comment_count()
	return 999
end

-- 文章数据
local function get_content_data(url)
	start,_ = string.find(url,"/article/") 
		-- string.find下标从1开始
		if (start == 1 ) then
			return {
				page_title = [[ MacOS 安装 OpenResty ]],
				{ 
			    -- 文章title
			    title = [[ MacOS 安装 OpenResty ]],
			    -- 文章创建时间
			    create_date = '2019-01-05',
			    -- 文章分类
			    category = 'DevOps',
			    -- 评论数  调用的query_comment_count函数需要先定义
			    comment_count = query_comment_count(), 
			     -- 文章内容(html)
			    html = [[<p><a href="https://openresty.org/cn/" target="_blank">OpenResty&reg; </a> 是一个基于 Nginx 与 Lua 的高性能 Web 平台，其内部集成了大量精良的 Lua 库、第三方模块以及大多数的依赖项。用于方便地搭建能够处理超高并发、扩展性极高的动态 Web 应用、Web 服务和动态网关。</p> 
		    <p><a href="https://openresty.org/cn/" target="_blank">OpenResty&reg; </a>  的目标是让你的Web服务直接跑在 Nginx 服务内部，充分利用 Nginx 的非阻塞 I/O 模型，不仅仅对 HTTP 客户端请求,甚至于对远程后端诸如 MySQL、PostgreSQL、Memcached 以及 Redis 等都进行一致的高性能响应。<a href="https://openresty.org/cn/" target="_blank">了解更多&gt;&gt; </a></p> 
		    <p><b>运行环境:</b></p> 
		    <ul> 
		     <li>MacOS : macOS Mojavoe 10.14.2 (18C54)</li> 
		     <li>OpenResty : openresty-1.13.6.2</li> 
		     <li>安装目录 : /Users/charles/work/openresty </li> 
		    </ul> 
		    <p><b>编译安装:</b>(官方推荐使用homebrew安装 brew install openresty/brew/openresty)</p> 
		    <pre class="language-bash command-line " data-user="charles" data-output="7-9" data-host="Charles-MacBook-Pro">
		    <code>
		brew update
		brew install pcre openssl
		curl -OL https://openresty.org/download/openresty-1.13.6.2.tar.gz
		tar zxvf openresty-1.13.6.2.tar.gz
		cd openresty-1.13.6.2
		./configure --prefix=/Users/charles/work/openresty \
		--with-cc-opt="-I/usr/local/opt/openssl/include/ -I/usr/local/opt/pcre/include/" \
		--with-ld-opt="-L/usr/local/opt/openssl/lib/ -L/usr/local/opt/pcre/lib/" \
		-j8
		    </code>
		   </pre> 
		    <p><b>运行:</b></p> 
		    <p>启动程序:/Users/charles/work/openresty/bin/openresty </p> 
		    <p>真实地址:/Users/charles/work/openresty/nginx/sbin/nginx </p> 
		    <p>nginx配置文件:/Users/charles/work/openresty/nginx/conf/nginx.conf </p>]],
			    -- 文章tag
			    tags = {
					{link = "javascript:void(0)", text = "Nginx"},
					{link = "javascript:void(0)", text = "Lua"},
				},
			    -- 文章 上一篇 下一篇
				pre_article = { link = "javascript:void(0)", title = "用Nginx Lua组合撸一个博客" },
				next_article = { link = "javascript:void(0)", title = "MacOS 安装 OpenResty" },
				can_comment = true
		    } 
	    }
		else 
		 return { {
		    html = [[<p>页面不见了。。。</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>]],
		} }
	end
end

-- 加载内容数据  返回值1:激活的menu链接, 返回值2: content内容数据
local function load_content(url)   
	local active_menu = '/index'
	local content_data = nil get_content_data(url)

	if (url == '/index') then 
		active_menu =  "/index"
		content_data = {
			page_title = [[ 首页 ]],
			{ 
			    -- 文章title
			    title = [[ 用Nginx Lua组合撸一个博客 ]],
			    -- 文章创建时间
			    create_date = '2019-01-05',
			    -- 文章内容(html)
			    html = [[<p>关于OpenResty的介绍与安装,此文就不再重复,有兴趣的可以到<a href="/article/1">MacOS 安装 OpenResty</a>查看博文</p>
			    <p>由于涉及到页面,所以采用模板<a href = "https://github.com/bungle/lua-resty-template" target = "_blank">lua-resty-template</a>,页面风格采用Hexo主题中的<a href = "https://github.com/tufu9441/maupassant-hexo" target = "_blank">Maupassant</a>,示例博客:<a href= "https://www.haomwei.com/" target = "_blank">屠夫9441的博客</a>
			    ,采用OpenResty为基础完全是为了练手,因为高性能。</p>
			    ]],
		        readmore = "/article/2",
		    },
			{ 
			    -- 文章title
			    title = [[ MacOS 安装 OpenResty ]],
			    -- 文章创建时间
			    create_date = '2019-01-04',
			    -- 文章内容(html)
			    html = [[<p><a href="https://openresty.org/cn/" target="_blank">OpenResty&reg; </a> 是一个基于 Nginx 与 Lua 的高性能 Web 平台，其内部集成了大量精良的 Lua 库、第三方模块以及大多数的依赖项。用于方便地搭建能够处理超高并发、扩展性极高的动态 Web 应用、Web 服务和动态网关。</p> 
		    <p>其目标是让你的Web服务直接跑在 Nginx 服务内部，充分利用 Nginx 的非阻塞 I/O 模型，不仅仅对 HTTP 客户端请求,甚至于对远程后端诸如 MySQL、PostgreSQL、Memcached 以及 Redis 等都进行一致的高性能响应。</p>]],
		        readmore = "/article/1",
		    }
		    
		}
	elseif url == '/archives' then 
		active_menu =  "/archives"

		content_data = {
			page_title = [[ 归档 ]],
			{
		        archives = { 
		        	{
			        	year = "2019",
			        	items = {
			        		{text = "用Nginx Lua组合撸一个博客" , title = "用Nginx Lua组合撸一个博客" ,link = "/article/2",date="2019-01-05"},
			        		{text = "MacOS 安装 OpenResty" , title = "MacOS 安装 OpenResty" ,link = "/article/1" , date="2019-01-04"},
			        	}
		        	}
		    	}
	    	}
		}
	elseif url == '/history' then 
		active_menu =  "/history"
	elseif url == '/comments' then 
		active_menu =  "/comments"  
	else
		content_data = get_content_data(url)
	end
	return active_menu,content_data
end  

-- 标签列表数据
local function load_tags()
	return {
		{link = "javascript:void(0)", text = "Java"},
		{link = "javascript:void(0)", text = "GoLang"},
		{link = "javascript:void(0)", text = "Python"},
		{link = "javascript:void(0)", text = "Lua"},
		{link = "javascript:void(0)", text = "Nginx"},
		{link = "javascript:void(0)", text = "小程序"},
		{link = "javascript:void(0)", text = "DevOps"},
		{link = "javascript:void(0)", text = "Vue"},
		{link = "javascript:void(0)", text = "Shell"},
	}
end

-- 最近文章数据
local function load_recent_articles()
	return {
		{link = "javascript:void(0)", text = "用Nginx Lua组合撸一个博客"},
		{link = "javascript:void(0)", text = "MacOS 安装 OpenResty"},
	}
end

-- 分类
local function load_categories()
	return {
		{link = "javascript:void(0)", text = "前端"},
		{link = "javascript:void(0)", text = "DevOps"},
		{link = "javascript:void(0)", text = "GoLang"},
		{link = "javascript:void(0)", text = "分布式"}
	}
end


local _M = {  
   load_content = load_content  ,
   load_tags = load_tags , 
   load_recent_articles = load_recent_articles ,
   load_categories = load_categories 
}  
  
return _M  