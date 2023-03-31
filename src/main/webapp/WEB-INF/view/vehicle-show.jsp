<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style><%@include file="/WEB-INF/styles.css"%></style>
<title>Insert title here</title>
</head>
<body>
	<table>
	<tbody>
	<tr>
	<td><label>ID: </label></td>
	<td><c:out value="${vehicle.id}"/></td>
	</tr>
	<tr>
	<td><label>Znacka: </label></td>
	<td><c:out value="${vehicle.znacka}"/></td>
	</tr>
	<tr>
	<td><label>Model: </label></td>
	<td><c:out value="${vehicle.model}"/></td>
	</tr>
	<tr>
	<td><label>Najazdene km: </label></td>
	<td><c:out value="${vehicle.najazdene_km} KM"/></td>
	</tr>
	<tr>
	<td><label>Cena: </label></td>
	<td><c:out value="${vehicle.cena} €"/></td>
	</tr>
	<tr>
	<td><label>Prevodovka: </label></td>
	<td><c:out value="${vehicle.prevodovka}"/></td>
	</tr>
	<tr>
	<td><label>Typ paliva: </label></td>
	<td><c:out value="${vehicle.typ_paliva}"/></td>
	</tr>
	<tr>
	<td><label>Vykon: </label></td>
	<td><c:out value="${vehicle.vykon} kW"/></td>
	</tr>
	<tr>
	<td><label>Karoseria: </label></td>
	<td><c:out value="${vehicle.karoseria}"/></td>
	</tr>
	<tr>
	<td><label>Majitel: </label></td>
	<td><c:out value="${vehicle.majitel}"/></td>
	</tr>
	<tr>
	<td><label></label></td>
	<td><a href="list">Back</a></td>
	</tr>
	</tbody> </table>
</body>
</html>