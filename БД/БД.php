<?php
define('USER', 'b916873x_test');
define('PASS', '24650808Dz!');

function debug($ar) {
    echo '<pre>';
    print_r($ar);
    echo '</pre>';
}
try {
    $pdo = new PDO('mysql:host=localhost;dbname=b916873x_test', USER, PASS);
} catch (PDOException $e) {
    echo 'Ошибка'.$e;
}

if (!empty($_POST['number']) && is_numeric($_POST['number'])) {
    $n = $_POST['number'];
    $query = "SELECT  `books`.`name`, `authors`.`name` as `name_a` FROM `books`
INNER JOIN `authors` ON `books`.`id` = `authors`.`id_books` 
WHERE `books`.`number_a`>= '$n'
ORDER BY `books`.`name`
";
    $result = $pdo->query($query);
    $table = $result->fetchAll(PDO::FETCH_ASSOC);

    $s = '';
    foreach ($table as $ar) {
        if ( $s == $ar['name']) {
            echo ', '.$ar['name_a'];
        }else {
            echo '<br>'.$ar['name'].' -- '.$ar['name_a'];
        }
        $s = $ar['name'];
    }
    if ($s == ''){
        echo 'Ни у одной книги нет такого колличества авторов';
    }
}



?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="index.php" name="a" method="POST">
    Введите колличество авторов: <input type="text" name="number">
    <input type="submit" name="submit">
</form>
</body>
</html>


