	<?php
	if($_POST['param1']) {
	    $a = $_POST['param1'];
    $d = date('Ymd(H:i:s)');
    $fp = fopen("$d - $a.txt", "w"); // Открываем файл в режиме записи
    if ($fp) echo 'Файл успешно сохранен';
    else echo 'Ошибка при сохранении файла';
    fclose($fp); //Закрытие файла
    }