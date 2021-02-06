<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TodayChart;
use App\Models\MonthlyChart;
use App\Models\WeeklyChart;


class ApiController extends Controller
{
    public function getChartData() {
    $today_chart = TodayChart::getData();
    $weekly_chart = WeeklyChart::getData();
    $monthly_chart = MonthlyChart::getData();

        return response()->json(
            [
                'today_chart' => $today_chart,
                'weekly_chart' => $weekly_chart,
                'monthly_chart' => $monthly_chart,
            ],
            200,
            [],
            JSON_UNESCAPED_UNICODE
        );
    }

    public function getInfoData() {
        $info_data = array(
        "total_revenue"=> '$30,493',
        "today_sale"=> '3443',
        "conversion"=>'0.67%',
        "today_vistors"=> '3432K',
      );
        return json_encode($info_data);
    }
}
