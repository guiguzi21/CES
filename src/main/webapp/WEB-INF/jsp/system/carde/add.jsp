<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${ctx}/js/system/carde/add.js"></script>
 <link type="text/css" href="${ctx}/js/system/evaluate/css/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
<link type="text/css" href="${ctx}/js/system/evaluate/css/jquery-ui-timepicker-addon.css" rel="stylesheet" />   
<script type="text/javascript" src="${ctx}/js/system/evaluate/js/jquery-ui-1.8.17.custom.min.js"></script>
<script type="text/javascript" src="${ctx}/js/system/evaluate/js/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="${ctx}/js/system/evaluate/js/jquery-ui-timepicker-zh-CN.js"></script>
    
    <script type="text/javascript">
    $(function () {
        $(".ui_timepicker").datetimepicker({
            //showOn: "button",
            //buttonImage: "./css/images/icon_calendar.gif",
            //buttonImageOnly: true,
            showSecond: true,
            timeFormat: 'hh:mm:ss',
            stepMinute: 1,
            stepSecond: 1
        })
    });
    </script>



<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
label[class^="btn btn-default"]{
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/carde/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">姓名</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入干部名称" name="cardeFormMap.cardename" id="cardename">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">年龄</label>
				<div class="col-sm-9">
					<input type="text" class="form-control "
						placeholder="请输入年龄" name="cardeFormMap.age" id="age">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">单位</label>
				<div class="col-sm-9">
					<input type="text" class="form-control "
						placeholder="请输入单位 " name="cardeFormMap.company" id="company">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">部门</label>
				<div class="col-sm-9">
					<input type="text" class="form-control " placeholder="请输入部门"
						name="cardeFormMap.department" id="department">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">职位</label>
				<div class="col-sm-9">
					<input type="text" class="form-control " placeholder="请输入职位"
						name="cardeFormMap.post" id="post">
				</div>
			</div>
			
			
			<div class="form-group">
				<label class="col-sm-3 control-label">入职时间</label>
				<div class="col-sm-9 input-append date" id="datetimepicker">
					<input type="text" class="form-control  ui_timepicker checkacc" 
					placeholder="请选择入职时间" name="cardeFormMap.sdate" id="sdate">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">简介</label>
				<div class="col-sm-9">
					<input type="text" class="form-control " placeholder="请输入简介信息"
						name="cardeFormMap.mark" id="mark">
				</div>	
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">性别</label>
				<div class="col-sm-9">
					<select class="input-xlarge btn-group m-r form-control"
						name="cardeFormMap.gender" >
							<option value="男" selected="selected">男</option>
							<option value="女">女</option>
					</select>
				</div>
			</div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
</body>
</html>