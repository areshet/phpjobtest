<?php
require_once 'class/ArrayToFile.php';
require_once 'class/Dbconnect.php';
require_once 'class/Helper.php';

CONST filename1 = 'array-1.json';
CONST filename2 = 'array-2.json';

if (!file_exists(filename1) && !file_exists(filename2)) {
    ArrayToFile::main(filename1, filename2);
}

if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else $page = 1;

/*     3 Задание (заполнить сущность созданной БД)
$file = file_get_contents(filename1);
$file2 = file_get_contents(filename2);

$mass = Helper::strToMass($file);
$mass2 = Helper::strToMass($file2);

foreach ($mass as $key => $value){
    $name = "Василий".$key;
    $surname = "Пупкин".($key+6);
    $patronymic = "Александрович".$value;
    $date = new DateTime();
    $date->modify('-21 year');
    $date->modify('-'.$key.' day');
    $date = $date->format('Y-m-d');
    $amount = $value + $mass[4];
    Dbconnect::insert($name,$surname,$patronymic,$date,$amount);
}

*/

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
    <div class="page-header mb-5">
        <h1 class="text-center">Информации о лицевых счетах</h1>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="row">
               <button type="button" class="btn btn-outline-secondary mb-3" data-toggle="modal" data-target="#exampleModal">Добавить</button>
            </div>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">№</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Фамилия</th>
                    <th scope="col">Отчетсво</th>
                    <th scope="col">Дата рождения</th>
                    <th scope="col">Номер счета</th>
                    <th scope="col">Сумма на счете</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $select = Dbconnect::select($page);
                foreach ($select as $value): ?>
                    <tr>
                        <th scope="row"><?= $value['number'] ?> </th>
                        <td><?= $value['name'] ?></td>
                        <td><?= $value['surname'] ?></td>
                        <td><?= $value['patronymic'] ?></td>
                        <td><?= $value['date'] ?></td>
                        <td><?= $value['number'] ?></td>
                        <td><?= $value['amount'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
            <nav>
                <ul class="pagination pagination-sm">
                    <?php Dbconnect::pagination($page) ?>
                </ul>
            </nav>

        </div>
    </div>

</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Добавить запись</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="add-record" class="needs-validation" novalidate>
                    <div class="form-group">
                        <label for="name" class="col-form-label">Имя:</label>
                        <input type="text" data-name="Имя" class="form-control" id="name" required>
                    </div>
                    <div class="form-group">
                        <label for="surname" class="col-form-label">Фамилия:</label>
                        <input type="text" data-name="Фамилия" class="form-control" id="surname" required>
                    </div>
                    <div class="form-group">
                        <label for="patronymic" class="col-form-label">Отчество:</label>
                        <input type="text" data-name="Отчество" class="form-control" id="patronymic" required>
                    </div>
                    <div class="form-group">
                        <label for="date" class="col-form-label">Дата Рождения:</label>
                        <input type="date" data-name="Дата Рождения" class="form-control" id="date" name="date" placeholder="Дата" required>
                    </div>
                    <div class="form-group">
                        <label for="amount" class="col-form-label">Сумма на счете:</label>
                        <input type="text" data-name="Сумма на счете" class="form-control" id="amount" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="send">Сохранить</button>
            </div>
            <div class="result text-secondary text-center pb-3 h5"></div>
        </div>
    </div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>
<script src="main.js"></script>
</body>
</html>
