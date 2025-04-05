<?php

namespace App\Helpers;

class ResHelper
{
    public static function getRes($num)
    {
        $ones = [
            0 => 'zero',
            1 => 'one',
            2 => 'two',
            3 => 'three',
            4 => 'four',
            5 => 'five',
            6 => 'six',
            7 => 'seven',
            8 => 'eight',
            9 => 'nine',
            10 => 'ten',
            11 => 'eleven',
            12 => 'twelve',
            13 => 'thirteen',
            14 => 'fourteen',
            15 => 'fifteen',
            16 => 'sixteen',
            17 => 'seventeen',
            18 => 'eighteen',
            19 => 'nineteen',
        ];
        $tens = [
            0 => '',
            1 => '',
            2 => 'twenty',
            3 => 'thirty',
            4 => 'forty',
            5 => 'fifty',
            6 => 'sixty',
            7 => 'seventy',
            8 => 'eighty',
            9 => 'ninety'
        ];
        $hundreds = ['hundred', 'thousand', 'million', 'billion', 'trillion', 'quardrillion']; /*limit t quadrillion */
        if ($num == '') {
            return $ones[0];
        } else {
            $num = number_format($num, 2, '.', ',');
            $num_arr = explode('.', $num);
            $wholenum = $num_arr[0];
            $decnum = $num_arr[1];