<div class="widget"> 
	<div class="widget-title"> 
	<i class="fa fa-file-o"> 最近文章 </i> 
	</div> 
	<ul class="post-list"> 
		{% if recent_articles ~= nil then %} 
			{% for index, recent_article in ipairs(recent_articles) do %}
			  <li class="post-list-item"><a class="post-list-link" href="{{recent_article.link}}"><p style="display: none;">{{index}}</p> {{recent_article.text}}</a></li> 
			{% end %}
		{% end %}
	</ul> 
	<p style="display: none;">共计: {{table.getn(recent_articles)}} 篇</p>
</div> 