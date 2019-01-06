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
    {(menu.tpl,this)}
    <!-- Menu End -->
   </div> 

   <div class="pure-g" id="layout"> 
    <div class="pure-u-1 pure-u-md-3-4">
     <!-- 内容 --> 
     {(content.tpl,this)}
    </div> 

    <!-- 引入一个完整的模块,传入context为this,模板文件中才能拿到同样的context-->
    <div class="pure-u-1-4 hidden_mid_and_down"> 
      {(sidebar.tpl,this)}
    </div> 
     
    {(bottom.tpl)}
   </div> 

   <a class="show" id="rocket" href="#top"></a> 
  </div>  
{(scripts.tpl)}
 </body>
</html>