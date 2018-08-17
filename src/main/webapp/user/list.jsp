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
	<script type="text/javascript">
	function toSearch(){
		var search=$("[name='search']").val();
		location="<%=path%>/list?search="+search;
		}
	</script>
  </head>
  
  <body>
  <div>
  <div>
  <label> 服务名称:</label>
  <input type="text" name="search" value="${param.search }" >
  <input type="button"  value="查询" onclick="toSearch()" >
  </div>
  </div>
  <table>
  <tr>
  <th>服务编号</th>
  <th>名称</th>
  <th>类型</th>
  <th>价格</th>
  <th>备注</th>
  <th>操作</th>
  </tr>
  <c:forEach items="${list }" var="u" >
  <tr>
  <td>${u.fid }</td>
  <td>${u.name }</td>
  <td>${u.type }</td>
  <td>${u.price }</td>
  <td>${u.remark }</td>
  <td>
  <c:if test="${u.remark!=null }">
  <input type="button" value="查看预约" onclick="location='<%=path%>/tomake?id=${u.id }'" >
  </c:if>
  <c:if test="${u.remark==null }">
  <input type="button" value="我要预约" onclick="location='<%=path%>/tomake?id=${u.id }'" >
  </c:if>
  
  </td>
  </tr>
  </c:forEach>
  </table>
  </body>
</html>
