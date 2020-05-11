<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film</title>
</head>
<body>
  <c:choose>
    <c:when test="${! empty film}">
      <ul>
     	<li>ID: ${film.id }</li>
        <li>TITLE: ${film.title}</li>
        <li>DESCRIPTION: ${film.description}</li>
        <li>RELEASE YEAR: ${film.releaseYear}</li>
        <li>LANGUAGE: ${language}</li>
      </ul>
    </c:when>
    <c:otherwise>
      <p>No film with that ID!</p>
    </c:otherwise>
  </c:choose>
      Delete this film?
    <form action="deleteFilm.do" method="POST">
    Enter the film ID to Delete:
 	<input type="number" name="filmId"/>
    <input type="submit" value="Delete Film"/>
  </form>

</body>
</html>