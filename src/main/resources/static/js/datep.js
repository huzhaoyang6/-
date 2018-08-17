$(function() {
	$("#date").datepicker(
			{
				/** 是否可以使用下拉列表更改月份 */
				changeMonth : true,
				/** 控件头部年份后显示的文本 */
				yearSuffix : "年",
				/** 是否可以使用下拉列表更改年份 */
				changeYear : true,
				/** 日期控件的星期显示 */
				dayNamesMin : [ '日', '一', '二', '三', '四', '五', '六' ],
				/** 日期控件的月份显示 */
				monthNamesShort : [ '1月', '2月', '3月', '4月', '5月', '6月', '7月',
						'8月', '9月', '10月', '11月', '12月' ],
				/** 点击某个日期，填充输入框的月份值 */
				monthNames : [ '01', '02', '03', '04', '05', '06', '07', '08',
						'09', '10', '11', '12' ],
				/** 是否显示第几周 */
				showWeek : true,
				/** 格式化日期内容 */
				dateFormat : "yy-MM-dd",
				/** 输入框后面是否显示日期控件的图标 ,button/both */
				showOn : "both",
				/** 日期控件显示之前触发的函数 */
				beforeShow : function() {
					// alert("beforeShow");
				},
				/** 改变年月时触发的函数 */
				onChangeMonthYear : function() {
					// alert("onChangeMonthYear");
				},
				/** 关闭控件时触发的函数 */
				onClose : function() {
					// alert("onClose");
				},
				/** 选中日期后触发的函数 */
				onSelect : function() {
					// alert("onSelect");
				}
			});
});