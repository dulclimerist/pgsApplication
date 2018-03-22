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
