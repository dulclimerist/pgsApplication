<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Malt Magazine</title>
    <link href="<c:url value="/resources/css/simpleStyle.css" />" rel="stylesheet">
</head>
<body>

<h2>Edit Malt description</h2>

<form method="post" action="/save">
    <input type="hidden" name="id" value="${lists.id}">
    Malt name:<br>
    <input type="text" name="name" value="${lists.name}">
    <br>
    Description:
    <br>
    <input type="text" name="description" value="${lists.description}">
    <br>
    Amount:
    <br>
    <input type="number" name="amount" value="${lists.amount}">
    <br>
    <br>
    <input type="submit" value="Submit">
</form>
<hr/>
<a href="/">Back</a>

</body>
</html>
