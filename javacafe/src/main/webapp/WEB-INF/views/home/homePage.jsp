<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.URLEncoder"%>
<!doctype html>
<html lang="en" class="h-100">
<!-- HEADER  -->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="stylesheet" type="text/css" href="<c:url value='../resources/css/main.css'/>"/>
    
    <title>JavaCafe</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/blog/">

    

    <!-- Bootstrap core CSS -->
	<link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>
<body>
	<div class="container">
	  <header class="blog-header py-3">
	    <div class="row flex-nowrap justify-content-between align-items-center">
	      <div class="col-4 pt-1">
	        <a class="link-secondary" href="/javacafe/selectCategory">카테고리 선택</a>
	      </div>
	      <div class="col-4 text-center">
	        <a class="blog-header-logo text-dark" href="/javacafe/home/homePage">JavaCafe</a>
	      </div>
	      <div class="col-4 d-flex justify-content-end align-items-center">
	        <a class="btn btn-sm btn-outline-secondary" href="#">관리자</a>
	      </div>
	    </div>
	  </header>
	  
	<!-- 코드 시작 -->
	<form action="homePage" method="post">
	<input type="submit" value="카테고리 선택">
  </form>
  
    <!-- FOOTER -->
  <footer class="blog-footer">
  <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
  <p>
    <a href="#">Back to top</a>
  </p>
</footer>
</body>
</html>
