<template>
  <app-layout>
    <div class="container mx-auto mt-5">
      <!-- Infor Card Section A Part -->
      <InfoCard></InfoCard>

      <!-- Graph Part -->
      <div class="flex flex-row flex-wrap flex-grow mt-2">
        <div class="w-full lg:w-2/5 p-3 flex">
          <DountChart></DountChart>
        </div>
        <div class="w-full lg:w-3/5 p-3 flex">
          <div class="bg-white rounded shadow w-full">
            <div class="p-3">
              <h1 class="font-bold text-xl text-gray-600">Sales Analytics</h1>
              <div class="text-right">
                <button
                  class="outline-none border border-blue-300 px-3 py-1 text-white rounded-l-lg focus:outline-white bg-blue-300"
                  :class="flag_today ? 'bg-blue-900' : ''"
                  @click="setToday"
                >
                  Today
                </button>
                <button
                  class="outline-none border border-blue-300 px-3 py-1 text-white focus:outline-white bg-blue-300"
                  :class="flag_weekly ? 'bg-blue-900' : ''"
                  @click="setWeekly"
                >
                  Weekly
                </button>
                <button
                  class="outline-none border border-blue-300 px-3 py-1 text-white rounded-r-lg focus:outline-white bg-blue-300"
                  :class="flag_monthly ? 'bg-blue-900' : ''"
                  @click="setMonthly"
                >
                  Monthly
                </button>
              </div>
            </div>
            <div class="p-5">
              <div class="chart">
                <DoubleChart
                  :chartData="chartData"
                  :chartOptions="chartOptions"
                  :chartType="chartType"
                  v-bind:key="count"
                ></DoubleChart>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Direction Mining Part -->
      <div class="w-full p-3">
        <DirectionMining></DirectionMining>
      </div>

      <!-- User Balance and history Part -->
      <div class="flex flex-wrap items-center">
        <div class="w-full xl:w-1/2 p-3">
          <div class="bg-white rounded shadow p-4">
            <UserBalance></UserBalance>
          </div>
        </div>

        <div class="w-full xl:w-1/2 p-3">
          <div class="bg-white rounded shadow p-4">
            <RevenueHistory></RevenueHistory>
          </div>
        </div>
      </div>
    </div>
  </app-layout>
</template>

<script>
import AppLayout from "@/Layouts/AppLayout";
import DoubleChart from "./../components/DoubleChart";
import UserBalance from "./../components/UserBalance";
import RevenueHistory from "./../components/RevenueHistory";
import DountChart from "./../components/DountChart";
import InfoCard from "./../components/InfoCard";
import DirectionMining from "./../components/DirectionMining";
export default {
  components: {
    AppLayout,
    DoubleChart,
    UserBalance,
    RevenueHistory,
    DountChart,
    InfoCard,
    DirectionMining,
  },

  data() {
    return {
      chartData_today: {
        labels: [],
        datasets: [
          {
            type: "bar",
            label: "Revenue",
            id: "y-axis-0",
            backgroundColor: "rgba(1,219,203,255)",
            data: [],
          },
        ],
      },
      chartData_weekly: {
        labels: [],
        datasets: [
          {
            type: "bar",
            label: "Revenue",
            id: "y-axis-0",
            backgroundColor: "rgba(1,219,203,255)",
            data: [],
          },
        ],
      },
      chartData_monthly: {
        labels: [],
        datasets: [
          {
            type: "bar",
            label: "Revenue",
            id: "y-axis-0",
            backgroundColor: "rgba(1,219,203,255)",
            data: [],
          },
        ],
      },
      chartData: {},
      chartOptions: {
        title: {
          display: true,
          text: "",
        },
        tooltips: {
          mode: "label",
        },
        responsive: true,
        scales: {
          xAxes: [
            {
              stacked: true,
            },
          ],
          yAxes: [
            {
              stacked: true,
              position: "left",
              id: "y-axis-0",
              scaleLabel: {
                display: true,
                labelString: "Ner Revenue",
              },
            },
          ],
        },
      },
      chartType: "bar",
      flag_today: false,
      flag_weekly: false,
      flag_monthly: false,
      count: 0,
    };
  },
  created() {
    axios.get("/api/chartdata").then((response) => {
      this.initChartData(response.data);
    });
  },
  methods: {
    initChartData(chart_data) {
      let today_chart = chart_data.today_chart;
      let monthly_chart = chart_data.monthly_chart;
      let weekly_chart = chart_data.weekly_chart;
      let label = [];
      let data = [];
      console.log(chart_data);
      for (let i = 0; i < today_chart.length; i++) {
        label[i] = today_chart[i].label;
        data[i] = today_chart[i].data;
      }
      this.chartData_today.labels = label;
      this.chartData_today.datasets[0].data = data;

      label = [];
      data = [];
      for (let i = 0; i < monthly_chart.length; i++) {
        label[i] = monthly_chart[i].label;
        data[i] = monthly_chart[i].data;
      }
      this.chartData_monthly.labels = label;
      this.chartData_monthly.datasets[0].data = data;

      label = [];
      data = [];
      for (let i = 0; i < weekly_chart.length; i++) {
        label[i] = weekly_chart[i].label;
        data[i] = weekly_chart[i].data;
      }
      this.chartData_weekly.labels = label;
      this.chartData_weekly.datasets[0].data = data;

      this.setToday();
    },

    setToday() {
      this.flag_today = true;
      this.flag_weekly = false;
      this.flag_monthly = false;

      this.chartData = this.chartData_today;
      this.count = this.count + 1;
      console.log("today", this.chartData_today);
    },
    setWeekly() {
      this.flag_today = false;
      this.flag_weekly = true;
      this.flag_monthly = false;
      this.chartData = this.chartData_weekly;
      this.count = this.count + 1;
    },
    setMonthly() {
      this.flag_today = false;
      this.flag_weekly = false;
      this.flag_monthly = true;
      this.chartData = this.chartData_monthly;
      this.count = this.count + 1;
    },
  },
};
</script>
