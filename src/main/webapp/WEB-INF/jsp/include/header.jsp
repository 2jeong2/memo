<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
	<header class=" d-flex align-items-center justify-content-between">
		<div class=" ml-3 " id="logo"><a href="/post/list_view"><b>Memo</b></a></div>
		
		
		<%-- 세션에 user id값이 존재하는지? --%>
		<c:choose>
			<c:when test="${not empty userId }">
				<div class="mr-3">${userName}님 <a href="/user/sign_out">로그아웃</a></div>
			</c:when>
			<c:otherwise>
				<div class="mr-3"><a href="/user/signin_view" >로그인</a></div>
			</c:otherwise>
		</c:choose>
	</header>