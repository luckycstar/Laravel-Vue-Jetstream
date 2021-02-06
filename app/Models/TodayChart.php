<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class TodayChart extends Model {

	public static function getData()
    {
        /**
         * Fetch all destinations that shown in destinations list page
         * and top destinations in home page
         */

        // get all destinations according possition ASC
        $today_chart = DB::select("
            SELECT * FROM today_chart");

        return $today_chart;
    }
}
