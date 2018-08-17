//操作完成后的提示及页面跳转
function message(data,dlgname,gridname){
	if(data>0){
		$.messager.alert("提示信息","操作成功！","info");
	}else{
		$.messager.alert("提示信息","操作失败！","info");
	}
	$("#"+dlgname).dialog("close");
	$("#"+gridname).datagrid("load");
}