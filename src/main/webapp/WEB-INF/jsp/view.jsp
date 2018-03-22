<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Malt Magazine</title>
    <link href="<c:url value="/resources/css/simpleStyle.css" />" rel="stylesheet">
</head>
<body>

<h2>HTML Table</h2>

<table>
    <tr>
        <th>ID</th>
        <td>${lists.id}</td>
    </tr>
    <tr>
        <th>Malt name</th>
        <td>${lists.name}</td>
    </tr>
    <tr>
        <th>Description</th>
        <td>${lists.description}</td>
    </tr>
    <tr>
        <th>Amount</th>
        <td>${lists.amount}</td>
    </tr>
</table>
<a href="/">Back</a>

</body>
</html>
