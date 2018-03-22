<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Malt Magazine</title>
    <link href="<c:url value="/resources/css/simpleStyle.css" />" rel="stylesheet">
</head>
<body>

<h2>Malts in magazine</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Malt</th>
        <th>Description</th>
        <th>Amount</th>
        <th>Action</th>
    </tr>
    <c:forEach var = "list" items = "${lists}">
    <tr>
        <td>${list.id}</td>
        <td>${list.name}</td>
        <td>${list.description}</td>
        <td>${list.amount}</td>
        <td>
            <a href="/view/${list.id}">View</a>
        </td>
    </tr>
    </c:forEach>

</table>
<hr/>
<form method="post" action="/save">
    Malt name:<br>
    <input type="text" name="name" value="">
    <br>
    Description:
    <br>
    <input type="text" name="description" value="">
    <br>
    Amount:
    <br>
    <input type="number" name="amount" value="0.0">
    <br>
    <br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
