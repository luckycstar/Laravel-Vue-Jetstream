<template>
  <div class="flex flex-wrap items-center">
    <div class="w-full md:w-1/2 xl:w-1/4 p-3">
      <!--Metric Card-->
      <div class="bg-white rounded shadow p-4">
        <div class="flex flex-row items-center">
          <div class="flex-shrink pr-4">
            <div
              class="rounded-full p-5 bg-purple-600 bg-opacity-50 border-4 border-purple-500"
            >
              <i class="fa fa-heart fa-2x fa-inverse"></i>
            </div>
          </div>
          <div class="flex-1 text-right md:text-center">
            <h3 class="font-bold text-3xl text-gray-600">
              {{ total_revenue }}
              <span class="text-green-500"></span>
            </h3>
            <h5 class="font-bold text-gray-400">Total Revenue</h5>
          </div>
        </div>
      </div>
      <!--/Metric Card-->
    </div>

    <div class="w-full md:w-1/2 xl:w-1/4 p-3">
      <!--Metric Card-->
      <div class="bg-white rounded shadow p-4">
        <div class="flex flex-row items-center">
          <div class="flex-shrink pr-4">
            <div
              class="rounded-full p-5 bg-green-600 bg-opacity-50 border-4 border-green-500"
            >
              <i class="fa fa-shopping-cart fa-2x fa-inverse"></i>
            </div>
          </div>
          <div class="flex-1 text-right md:text-center">
            <h3 class="font-bold text-3xl text-gray-600">
              {{ today_sale }}
              <span class="text-green-500"></span>
            </h3>
            <h5 class="font-bold text-gray-400">Today's Sale</h5>
          </div>
        </div>
      </div>
      <!--/Metric Card-->
    </div>

    <div class="w-full md:w-1/2 xl:w-1/4 p-3">
      <!--Metric Card-->
      <div class="bg-white rounded shadow p-4">
        <div class="flex flex-row items-center">
          <div class="flex-shrink pr-4">
            <div
              class="rounded-full p-5 bg-blue-600 bg-opacity-50 border-4 border-blue-500"
            >
              <i class="fa fa-chart-bar fa-2x fa-inverse"></i>
            </div>
          </div>
          <div class="flex-1 text-right md:text-center">
            <h3 class="font-bold text-3xl text-gray-600">
              {{ conversion }}
              <span class="text-green-500"></span>
            </h3>
            <h5 class="font-bold text-gray-400">Conversion</h5>
          </div>
        </div>
      </div>
      <!--/Metric Card-->
    </div>

    <div class="w-full md:w-1/2 xl:w-1/4 p-3">
      <!--Metric Card-->
      <div class="bg-white rounded shadow p-4">
        <div class="flex flex-row items-center">
          <div class="flex-shrink pr-4">
            <div
              class="rounded-full p-5 bg-yellow-600 bg-opacity-50 border-4 border-yellow-500"
            >
              <i class="fa fa-eye fa-2x fa-inverse"></i>
            </div>
          </div>
          <div class="flex-1 text-right md:text-center">
            <h3 class="font-bold text-3xl text-gray-600">
              {{ today_visitor }}
              <span class="text-green-500"></span>
            </h3>
            <h5 class="font-bold text-gray-400">Today's Visitors</h5>
          </div>
        </div>
      </div>
      <!--/Metric Card-->
    </div>
  </div>
</template>
<script>
export default {
  name: "InforCard",
  data() {
    return {
      total_revenue: "",
      today_sale: "",
      conversion: "",
      today_visitor: "",
    };
  },

  created() {
    axios.get("/api/infodata").then((response) => {
      this.total_revenue = response.data.total_revenue;
      this.today_sale = response.data.today_sale;
      this.conversion = response.data.conversion;
      this.today_vistors = response.data.today_vistors;
    });
  },
};
</script>
