<?php


class ArrayToFile
{
    public static function main($filename1,$filename2)
    {
        $array = array();
        for ($i = 0; $i < 100; $i++) {
            $array[$i] = self::getRandom(0, 5685);
        }
        self::recordFile($array, $filename1);

        for ($i = 1; $i < 100; $i++) {
            if ($i % 4 == 0 || $i & 1) {
                $array[$i] = ($array[$i] - 23) * 2;
            }
        }
        $array2 = array_values(array_filter($array, function ($i) {
            return $i >= 2450 && $i < 4031;
        }));
        self::recordFile($array2, $filename2);

    }

    static function getRandom($min, $max)
    {
        return rand($min, $max);
    }

    static function recordFile($mass, $filename)
    {
        $json = json_encode($mass);
        $fp = fopen($filename, "w");
        fwrite($fp, $json);
        fclose($fp);
    }


}