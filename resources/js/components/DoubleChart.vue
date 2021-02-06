<template>
<div>
  <canvas></canvas>
</div>
</template>

<script>
export default {
  name: "DoubleChart",
  props: {
    chartType: String,
    chartData: Object,
    chartOptions: Object
  },
  data() {
    return {}
  },
  mounted() {
    let {
      chartType,
      chartData,
      chartOptions
    } = this;
    this.chartConstructor(chartType, chartData, chartOptions);
  },
  methods: {
    chartConstructor(chartType, chartData, chartOptions) {
      const chartElement = document.querySelector("canvas");
      const chart = new Chart(chartElement, {
        type: chartType,
        data: chartData,
        options: chartOptions,
      });
    },
  }
}
</script>
