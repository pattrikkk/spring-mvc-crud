<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style><%@include file="/WEB-INF/styles.css"%></style>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<form action="searchVehicle" method="GET">
		<input name="search" required="required"/>
		<input type="submit" value="Search"/>
	</form>
	
	<table>
		<tr>
		<th>Znacka</th>
		<th>Model</th>
		<th>Najazdene km</th>
		<th>Cena</th>
		</tr>

	<c:forEach var="tempVehicle" items="${vehicles}">
			<c:url var="updateLink" value="/vehicle/showFormForUpdate">
				<c:param name="vehicleId" value="${tempVehicle.id}" />
			</c:url>
			<c:url var="deleteLink" value="/vehicle/delete">
				<c:param name="vehicleId" value="${tempVehicle.id}" />
			</c:url>
			<c:url var="showLink" value="/vehicle/showVehicle">
				<c:param name="vehicleId" value="${tempVehicle.id}" />
			</c:url>
			<tr>
				<td>${tempVehicle.znacka}</td>
				<td>${tempVehicle.model}</td>
				<td>${tempVehicle.najazdene_km} KM</td>
				<td>${tempVehicle.cena} €</td>
				<td>
					<a href="${updateLink}">UPDATE</a> |
					<a href="${showLink}">SHOW</a> |
					<a href="${deleteLink}"onclick=
					"if (!(confirm('Are you sure you want to delete this vehicle?')))
					return false">DELETE</a>
				</td>
			</tr>
	</c:forEach>
	</table>
	<input type="button" value="Add Vehicle" onclick="window.location.href='showFormForAdd'; return false;" class="add-button" />
</body>
</html>