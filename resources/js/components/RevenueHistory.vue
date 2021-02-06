<template>
  <table class="min-w-full leading-normal h-full">
    <thead>
      <tr>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          MarketPlaces
        </th>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          Date
        </th>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          Payouts
        </th>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          Status
        </th>
      </tr>
    </thead>
    <tbody>
      <tr
        v-for="(history, index) in revenue_history"
        v-bind:key="index"
        class="h-16"
      >
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <p class="text-gray-900 whitespace-no-wrap">
            {{ history.market_place }}
          </p>
        </td>
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <p class="text-gray-900 whitespace-no-wrap">{{ history.date }}</p>
        </td>
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <p class="text-gray-900 whitespace-no-wrap">{{ history.payouts }}</p>
        </td>
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <p class="text-gray-900 whitespace-no-wrap">{{ history.status }}</p>
        </td>
      </tr>
    </tbody>
  </table>
</template>
<script>
export default {
  components: {},
  data() {
    return {
      revenue_history: [
        {
          market_place: "Vera Carpenter",
          date: "OCT 15, 2018",
          payouts: "$59595.78",
          status: "upcoming",
        },
        {
          market_place: "Vera Carpenter",
          date: "OCT 15, 2018",
          payouts: "$59595.78",
          status: "upcoming",
        },
        {
          market_place: "Vera Carpenter",
          date: "OCT 15, 2018",
          payouts: "$59595.78",
          status: "upcoming",
        },
        {
          market_place: "Vera Carpenter",
          date: "OCT 15, 2018",
          payouts: "$59595.78",
          status: "upcoming",
        },
        {
          market_place: "Vera Carpenter",
          date: "OCT 15, 2018",
          payouts: "$59595.78",
          status: "upcoming",
        },
      ],
    };
  },
};
</script>
