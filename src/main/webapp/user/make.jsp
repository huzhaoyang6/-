<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'MyJsp.jsp' starting page</title>
    <script type="text/javascript" src="<%=path%>/easyui/jquery-1.8.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/index1.css">
	<script type="text/javascript" src="<%=path%>/js/jquery.ztree.core.js"></script>
    <link rel="stylesheet" href="<%=path%>/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
	<script type="text/javascript" src="<%=path%>/js/My97DatePicker/WdatePicker.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/easyui/themes/icon.css">
	<script type="text/javascript" src="<%=path%>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path%>/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=path%>/easyui/sys.js"></script>
	<script type="text/javascript" src="<%=path%>/easyui/jquery-form.js"></script>
	<script type="text/javascript" src="<%=path%>/js/pic.js"></script>
	<script type="text/javascript" src="<%=path%>/js/angular.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
  </head>
  
  <body>
  <form>
  <div>
  
  
  
  <div>
  <label>服务编号</label>
  <div>
  ${map.fid }
  </div>
  </div>
  
  <div>
  <label>服务名称</label>
  <div>
  ${map.name }
  </div>
  </div>
  
  <div>
  <label>上门日期</label>
  <div>
  <input type="text" name="sdate" onfocus="WdatePicker()"  >
  </div>
  </div>
  
  <div>
  <label>上门地址</label>
  <div>
  <input type="text" name="saddress"  >
  <input type="hidden" name="hid" value="${map.id }"  >
  </div>
  </div>
  
  <div>
  <label>联系电话</label>
  <div>
  <input type="text" name="phone"  >
  </div>
  </div>
  
  <div>
  <label>备注</label>
  <div>
  <input type="text" name="remark"  >
  </div>
  </div>
  
  <div>
  <p id="d" >
  <input type="button" class="tj" value="提交预约" id="" >
  </p>
  </div>
  
  
  </div>
  </form>
  </body>
  <script type="text/javascript">
  $(function (){
	  var state='${map.state}';
	  if(state==0){
		  $(".tj").attr("id","add");
	  }else if(state==1){
		  $(".tj").attr("id","update");
		  $("[name='sdate']").val('${map.sdate}');
		  $("[name='saddress']").val('${map.saddress}');
		  $("[name='phone']").val('${map.phone}');
		  $("[name='remark']").val('${map.remark}');
		  
		  $("#d").append("<input type='button'  value='删除预约' id='del' >");
		  
		  
	  }
	  
	  
	  $("#add").click(function (){
		  $.post(
					"<%=path%>/add",
					$("form").serialize(),
					function (obj){
						if(obj>0){
							alert("预约添加成功");
							location="<%=path%>/list";
						}else{
							alert("预约添加失败");
						}
					},"json"
			  );
	  });
	  $("#update").click(function (){
		  $.post(
					"<%=path%>/update",
					$("form").serialize(),
					function (obj){
						if(obj>0){
							alert("预约修改成功");
							location="<%=path%>/list";
						}else{
							alert("预约修改失败");
						}
					},"json"
			  );
	  });
	  $("#del").click(function (){
		  if(confirm("您确认要删除此条预约啊？")){
			  $.post(
						"<%=path%>/del",
						$("form").serialize(),
						function (obj){
							if(obj>0){
								alert("预约删除成功");
								location="<%=path%>/list";
							}else{
								alert("预约删除失败");
							}
						},"json"
				  );
		  }
		  
	  });
	  
	  
	  
  });  
  </script>
</html>
