var pageii = null;
var grid = null;
$(function() {
	
	grid = lyGrid({
		pagId : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : '40px',
			isSort:true,
		}, {
			colkey : "question_name",
			name : "问卷调查名称",
			width : '160px',
		},{
			colkey : "target1",
			name : "指标1",
		},{
			colkey : "target2",
			name : "指标2",
		}, {
			colkey : "target3",
			name : "指标3"
		}, {
			colkey : "target4",
			name : "指标4"
		}, {
			colkey : "target5",
			name : "指标5"
		}, {
			colkey : "target6",
			name : "指标6"
		}, {
			colkey : "target7",
			name : "指标7"
		},{
			colkey : "target8",
			name : "指标8"
		}, {
			colkey : "target9",
			name : "指标9"
		}, {
			colkey : "target10",
			name : "指标10"
		}   ],
		jsonUrl : rootPath + '/target/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addAccount").click("click", function() {
		addAccount();
	});
	$("#editAccount").click("click", function() {
		editAccount();
	});
	$("#delAccount").click("click", function() {
		delAccount();
	});
});
function editAccount() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "350px", "60%" ],
		content : rootPath + '/target/editUI.shtml?id=' + cbox
	});
}
function addAccount() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "350px", "60%" ],
		content : rootPath + '/target/addUI.shtml'
	});
}
function delAccount() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/target/deleteEntity.shtml';
		var s = CommnUtil.ajax(url, {
			ids : cbox.join(",")
		}, "json");
		if (s == "success") {
			layer.msg('删除成功');
			grid.loadData();
		} else {
			layer.msg('删除失败');
		}
	});
}
