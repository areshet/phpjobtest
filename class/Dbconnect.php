<?php
require_once 'config.php';

class Dbconnect
{
    private function connect()
    {
        $connect = new mysqli(DBHOST, DBUSER, "", DBNAME);
        $connect->set_charset("utf8");
        if ($connect->connect_error) die($connect->connect_error);

        return $connect;
    }

    static function select($page)
    {
        $on_page = 8;
        $shift = ($page - 1) * $on_page;
        $sql = "SELECT * from t_storage LIMIT $shift,$on_page";
        $query = self::connect()->query($sql);
        if ($query->num_rows > 0) {
            return $query->fetch_all(MYSQLI_ASSOC);
        } else {
            $sql = "SELECT * from t_storage LIMIT 0,$on_page";
            $query = self::connect()->query($sql);
            return $query->fetch_all(MYSQLI_ASSOC);

        }
    }

    static function insert($name, $surname, $patronymic, $date, $amount)
    {
        $sql = "INSERT INTO t_storage (name, surname, patronymic, date, amount) VALUES ('$name','$surname', '$patronymic','$date',$amount)";
        if (self::connect()->query($sql) === TRUE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    static function pagination($page)
    {
        $on_page = 8;
        $result = self::connect()->query("SELECT count(*) FROM t_storage");
        $row = $result->fetch_row();
        $count = $row[0];
        $pages = ceil($count / $on_page);
        for ($i = 1; $i <= $pages; $i++) {
            if ($i == $page) {
                echo "<li class='page-item disabled'><a class='page-link' href='#' tabindex='-1'>$i</a></li>";
            } else {
                echo "<li class='page-item'><a class='page-link' href='?page=$i'>$i</a></li>";
            }
        }
    }
}