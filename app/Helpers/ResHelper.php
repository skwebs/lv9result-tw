<?php

namespace App\Helpers;

class ResHelper
{
    public static function getRes($res)
    {
        function res($m)
        {
            if ($m >= 91) {
                return [
                    'g' => 'A+',
                    'r' => 'Result is excellent. Keep it up.',
                    'c' => 'success text-light',
                ];
            } elseif ($m >= 81) {
                return [
                    'g' => 'A',
                    'r' => 'Result is best but need keep it up.',
                    'c' => 'success text-light',
                ];
            } elseif ($m >= 71) {
                return [
                    'g' => 'B+',
                    'r' => 'Result is better Need improve & keep it up.',
                    'c' => 'success text-light',
                ];
            } elseif ($m >= 61) {
                return [
                    'g' => 'B',
                    'r' => 'Result is good but not fair. Increase hard work.',
                    'c' => 'warning',
                ];
            } elseif ($m >= 51) {
                return [
                    'g' => 'C+',
                    'r' => 'Result is average! Increase hard work.',
                    'c' => 'warning',
                ];
            } elseif ($m >= 41) {
                return [
                    'g' => 'C',
                    'r' => 'Result is below to average. Do hard work to improve it.',
                    'c' => 'warning',
                ];
            } elseif ($m >= 33) {
                return [
                    'g' => 'D',
                    'r' => 'Result is poor. Need much hard work to improve it.',
                    'c' => 'danger text-light',
                ];
            } else {
                return [
                    'g' => 'E',
                    'r' => 'Result is very poor. Need very much hard work to improve it.',
                    'c' => 'danger text-light',
                ];
            }
        }
    }
}
