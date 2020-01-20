<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>del-favorite</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> Movie Cruiser <img src="images\logo.png" hspace="1.5%"> </header>
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorites" href="ShowFavorite">Favorites</a>
    </nav>
    <h1 id="movie">Favorites</h1>
    <c:if test="${removeFavoriteStatus==true }">
        <h4 id="remove-fav1">Movie Removed from Favorite Successfully</h4>
    </c:if>
    <table id="table2">
        <col width="150px" />
        <col width="150px" />
        <col width="130px" />


        <tr>
            <th align="left">Title</th>
            <th align="right">Box office</th>
            <th align="center">Genre</th>

        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>

                <td align="right"><f:formatNumber type="currency" maxFractionDigits="0"
                        value="${movie.getBoxOffice()}"></f:formatNumber></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="left"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
            </tr>
        </c:forEach>

        <tr>

            <td align="left"><b>No. of Favorites:<b></td>
            <td><b>${favorite.getNoOfFavorite()}<b></td>

        </tr>
    </table>

    <footer>Copyright &copy 2019 </footer>
</body>
</html>
