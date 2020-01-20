<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>customer</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> Movie Cruiser <img src="images\logo.png" hspace="1.5%"> </header>
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorites" href="ShowFavorite">Favorites</a>
    </nav>
    <h1 id="movie">Movies</h1>
    <c:if test="${addFavoriteStatus==true }">
        <h4 id="add-fav">Movie Added Into Favorite Successfully</h4>
    </c:if>
    <table id="table2">
        <col width="175px" />
        <col width="90px" />
        <col width="105px" />
        <col width="130px" />
        <col width="100px" />

        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Genre</th>
            <th align="center">Has Teaser</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>

                <td align="right"><f:formatNumber type="currency" maxFractionDigits="0"
                        value="${movie.getBoxOffice()}"></f:formatNumber></td>

                <td align="center">${movie.getGenre()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><a href="AddToFavorite?movieId=${movie.getMovieId()}">Add
                        to Favorite</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>Copyright &copy; 2019 </footer>
</body>
</html>
