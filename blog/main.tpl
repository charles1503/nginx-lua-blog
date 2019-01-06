<!DOCTYPE html>
<html lang="zh-CN">
{(head.tpl)}
 <body> 
  <div class="body_container"> 
   <div id="header"> 
    <!-- Info  引入模板-->
     {(info.tpl)}
    <!-- Info -->

    <!-- Menu -->
    <div id="nav-menu"> 
      {% for _, menu in ipairs(menus) do %}
      <a  {% if menu.active then %} class="current"{% end %} href="{{menu.link}}"><i class="{{menu.icon_style}}"> {{menu.text}}</i></a> 
      {% end %} 
    </div> 
    <!-- Menu End -->
   </div> 
   <div class="pure-g" id="layout"> 
    <div class="pure-u-1 pure-u-md-3-4">
     <!-- 内容 --> 
     {(content.tpl)}
    </div> 

    <div class="pure-u-1-4 hidden_mid_and_down"> 
     <div id="sidebar"> 

      <div class="widget"> 
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

      <!-- 引入一个完整的模块,传入context为this,模板文件中才能拿到同样的context-->
      <!-- 标签-->
      {(tag.tpl,this)}
      <!--最近文章-->
      {(recent_articles.tpl,this)}
      
     </div> 
    </div> 
     
     {(bottom.tpl)}
   </div> 
   <a class="show" id="rocket" href="#top"></a> 
  </div>  
 </body>
{(scripts.tpl)}
</html>