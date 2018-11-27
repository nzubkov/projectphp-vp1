<?php

$config = include "db.php";
$mysqli = mysqli_connect($config->host, $config->username, $config->password, $config->database);
$result = mysqli_query($mysqli, "SELECT * FROM orders");
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
        <td>№ пользователя</td>
        <td>Поставка</td>
        <td>Количество</td>
        <td>Дата заказа</td>
    </tr>
    <?php
    while ($v = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<tr style='border: solid 1px black;'>";
        echo "<td>{$v['ID']}</td>";
        echo "<td>{$v['users_id']}</td>";
        echo "<td>{$v['item']}</td>";
        echo "<td>{$v['quantity']}</td>";
        echo "<td>{$v['date_time']}</td>";
        echo "</tr>";
    }
    ?>

</table>
</body>
</html>