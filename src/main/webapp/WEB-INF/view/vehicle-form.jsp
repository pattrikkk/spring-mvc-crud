<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/styles.css"%></style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="saveVehicle" modelAttribute="vehicle" method="POST">
	<form:hidden path="id" />
	<table>
	<tbody>
	<tr>
	<td><label>Znacka: </label></td>
	<td><form:input path="znacka" required="required"/></td>
	</tr>
	<tr>
	<td><label>Model: </label></td>
	<td><form:input path="model" required="required"/></td>
	</tr>
	<tr>
	<td><label>Najazdene km: </label></td>
	<td><form:input path="najazdene_km" required="required"/></td>
	</tr>
	<tr>
	<td><label>Cena: </label></td>
	<td><form:input path="cena" required="required"/></td>
	</tr>
	<tr>
	<td><label>Vykon: </label></td>
	<td><form:input path="vykon" required="required"/></td>
	</tr>
	<tr>
	<td><label>Prevodovka: </label></td>
	<td><form:select path="prevodovka" required="required">
	<form:option value="Automat" label="Automat" />
	<form:option value="Manual" label="Manual" />
	</form:select></td>
	</tr>
	<tr>
	<td><label>Typ paliva: </label></td>
	<td><form:select path="typ_paliva" required="required">
	<form:option value="Benzin" label="Benzin" />
	<form:option value="Nafta" label="Nafta" />
	</form:select></td>
	</tr>
	<tr>
	<td><label>Karoseria: </label></td>
	<td><form:input path="karoseria" required="required"/></td>
	</tr>
	<tr>
	<td><label>Majitel: </label></td>
	<td><form:input path="majitel" required="required"/></td>
	</tr>
	<tr>
	<td><a href="list">Back</a></td>
	<td><input type="submit" value="Save" class="save" /></td>
	</tr>
	</tbody> </table> </form:form>
</body>
</html>