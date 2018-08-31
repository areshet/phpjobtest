<?php

class Helper
{
  public static function strToMass($str){
      $str = trim ($str,'[');
      $str = rtrim($str,']');
      $mass = explode(',', $str);
    return $mass;
  }
}