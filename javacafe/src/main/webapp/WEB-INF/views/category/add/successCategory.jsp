<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	카테고리 추가가 완료되었습니다.<br>
	카테고리명 : ${category.name}<br>
	<button type="button" onclick="location.href='/javacafe/home/homePage'">확인</button>
</body>
</html>