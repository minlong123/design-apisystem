/**

 @Name：layuiAdmin 公共业务
 @Author：贤心
 @Site：http://www.layui.com/admin/
 @License：LPPL
    
 */
 
layui.define(function(exports){
  var $ = layui.$
  ,layer = layui.layer
  ,laytpl = layui.laytpl
  ,setter = layui.setter
  ,view = layui.view
  ,admin = layui.admin
  
  //公共业务的逻辑处理可以写在此处，切换任何页面都会执行
  //……
  
  
  
  //退出
  admin.events.logout = function(){
    //执行退出接口
    $.ajax({
      type:'post',
      url:"/Index/logout",
      success:function(res){
        layer.msg(res.msg,{time:1000},function(){
          if(res.statu == 1){
            window.location.href=res.url;
          }
        });
      },
    },'json');
  };

  
  //对外暴露的接口
  exports('common', {});
});