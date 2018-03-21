<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Malt Magazine</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<h2>HTML Table</h2>

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
        <td>Germany</td>
    </tr>
    </c:forEach>

</table>

</body>
</html>
