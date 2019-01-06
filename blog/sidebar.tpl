 <div id="sidebar"> 

  <div class="widget" style="display: none;"> 
   <form class="search-form" accept-charset="utf-8" target="_blank"> 
    <input type="text" name="q" maxlength="20" placeholder="Search" /> 
   </form> 
  </div> 

  <div class="widget"> 
   <div class="widget-title"> 
    <i class="fa fa-folder-o"> 分类</i> 
   </div> 
   <!-- Category -->
   <ul class="category-list">  
    {% for _, category in ipairs(categories) do %}
    <li class="category-list-item"><a class="category-list-link fa fa-folder-o" href="{{category.link}}"> {{category.text}}</a></li> 
    {% end %}
   </ul> 
   <!-- Category End -->
  </div> 

  <!-- 标签-->
  <div class="widget"> 
   <div class="widget-title"> 
    <i class="fa fa-star-o"> 标签</i> 
   </div>  
   <!-- Tags --> 
   <div class="tagcloud"> 
    {% for _, tag in ipairs(tags) do %}
    <a href="{{tag.link}}" style="font-size: 15px;">{{tag.text}}</a> 
    {% end %}
    </div>
   <!-- Tags End -->
  </div> 
  <!--最近文章-->
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
  
 </div> 
