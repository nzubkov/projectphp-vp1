<?php

$config = include "db.php";
$mysqli = mysqli_connect($config->host, $config->username, $config->password, $config->database);
$result = mysqli_query($mysqli, "SELECT * FROM users");
?>

<html lang="en">
<head>
    <title>Admin page</title>
</head>
<body>
<table width="100%" border="0">
    <a href="users.php">Пользователи</a> | <a href="orders.php">Заказы покупателей</a>
    <tr bgcolor="#f0ffff">
        <td>№</td>
        <td>Имя</td>
        <td>EMAIL</td>
        <td>Телефон</td>
    </tr>
    <?php
    while ($v = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<tr style='border: solid 1px black;'>";
        echo "<td>{$v['ID']}</td>";
        echo "<td>{$v['Name']}</td>";
        echo "<td>{$v['Email']}</td>";
        echo "<td>{$v['Phone']}</td>";
        echo "</tr>";
    }
    ?>

</table>
</body>
</html>