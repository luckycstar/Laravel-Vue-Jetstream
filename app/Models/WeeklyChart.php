<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class WeeklyChart extends Model {

	public static function getData()
    {
        /**
         * Fetch all destinations that shown in destinations list page
         * and top destinations in home page
         */

        // get all destinations according possition ASC
        $weekly_chart = DB::select("
            SELECT * FROM weekly_chart");

        return $weekly_chart;
    }
}
