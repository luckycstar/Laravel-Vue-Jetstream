<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class MonthlyChart extends Model {

	public static function getData()
    {
        /**
         * Fetch all destinations that shown in destinations list page
         * and top destinations in home page
         */

        // get all destinations according possition ASC
        $monthly_chart = DB::select("
            SELECT * FROM monthly_chart");

        return $monthly_chart;
    }
}
