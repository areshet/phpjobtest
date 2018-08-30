<?php
require_once 'class/Dbconnect.php';

if( !empty($_POST) ){
 $name = $_POST['name'];
 $surname = $_POST['surname'];
 $patronymic = $_POST['patronymic'];
 $date = date("Y-m-d",strtotime($_POST['date']));
 $amount = $_POST['amount'];

 $query = Dbconnect::insert($name,$surname,$patronymic,$date,$amount);

 if( $query === TRUE){
     echo "Запись успешно добавлена";
 }else{
     echo "Ошибка";
 }

}else{
    echo "Ошибка";
}