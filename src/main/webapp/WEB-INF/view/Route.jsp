<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp"%>
<title>Select Route</title>

</head>
<body>
	<div class="container">
		<h2>表格</h2>
		<div class="table-responsitive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>序号</th>
						<th>始发地</th>
						<th>终点</th>
						<th>选择</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>北京</td>
						<td>唐山</td>
						<td><a href="Schedule" class="btn btn-primary" role="button">选择</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>