<template>
<!--Graph Card-->
<div class="bg-white rounded shadow p-3 w-full">
  <div class="p-3 flex justify-between">
    <h4 class="font-bold text-3xl text-gray-600">Server Status</h4>
    <div class="text-gray-500 cursor-pointer" @click.prevent="showModal = !showModal">
      <i class="fa fa-bars fa-2x"></i>
    </div>
  </div>
  <div class="p-5">
    <vc-donut v-bind="props">
      <h1 class="text-6xl font-bold text-green-600">3/5</h1>
    </vc-donut>
    <h1 class="font-bold text-xl text-center text-gray-600 mt-2">Online</h1>
  </div>
  <div class="p-3 flex">
    <div class="w-1/2 md:w-full lg:w-1/2">
      <vc-donut v-bind="props1">
        <h1 class="text-4xl font-bold text-yellow-600 opacity-50">3/5</h1>
      </vc-donut>
      <h1 class="font-bold text-xl text-center text-gray-600 mt-2">
        Warning
      </h1>
    </div>
    <div class="w-1/2 md:w-full lg:w-1/2">
      <vc-donut v-bind="props2">
        <h1 class="text-4xl font-bold text-red-600 opacity-50">3/5</h1>
      </vc-donut>
      <h1 class="font-bold text-xl text-center text-gray-600 mt-2">
        Offline
      </h1>
    </div>
  </div>

  <!-- modal -->
  <div class="customModal bg-white py-3" v-if="showModal">
    <div class="bg-gray-100 text-left font-bold text-3xl mb-10 p-2 flex justify-between px-4">
      <div>Server Manager</div>
      <button class="close" @click.prevent="showModal = !showModal">&times;</button>
    </div>
    <table class="min-w-full leading-normal h-full">
      <thead>
        <tr>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
            Equipos
          </th>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
          </th>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
          </th>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
          </th>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
          </th>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
          </th>
          <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
          </th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(server, index) in server_manager" v-bind:key="index" class="h-16 hover:bg-gray-300">
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap">
              Nombre del equipo
            </p>
            <p class="text-gray-900 text-xl whitespace-no-wrap">
              <i class="fa fa-angle-right"></i> {{ server.market_place }}
            </p>
          </td>
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap">Estato</p>
            <p class="text-green-900 text-xl whitespace-no-wrap">{{ server.date }}</p>
          </td>
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap">Temp. mas alta</p>
            <p class="text-gray-900 whitespace-no-wrap">--</p>
          </td>
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap">Rentabilidad Actual actual equipo</p>
            <p class="text-gray-900 whitespace-no-wrap text-lg">{{ server.status }}</p>
          </td>
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap"><i class="fa fa-play-circle"></i></p>
          </td>
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap"><i class="fa fa-stop-circle"></i></p>
          </td>
          <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
            <p class="text-gray-400 whitespace-no-wrap"><i class="fa fa-grip-vertical"></i> </p>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<!--/Graph Card-->
</template>

<script>
export default {
  data() {
    return {
      showModal: false,
      props: {
        size: 200,
        sections: [{
            value: 75,
            color: "#0cad66",
          },
          {
            value: 25,
            color: "#95f0b9",
          },
        ],
        thickness: 25, // set this to 100 to render it as a pie chart instead
        hasLegend: false,
        // specify more props here
      },
      props1: {
        size: 150,
        sections: [{
            value: 75,
            color: "#ffdfad",
          },
          {
            value: 25,
            color: "#f39400",
          },
        ],
        thickness: 25, // set this to 100 to render it as a pie chart instead
        hasLegend: false,
        // specify more props here
      },
      props2: {
        size: 150,
        sections: [{
            value: 75,
            color: "#ffacaf",
          },
          {
            value: 25,
            color: "#ff7274",
          },
        ],
        thickness: 25, // set this to 100 to render it as a pie chart instead
        hasLegend: false,
        // specify more props here
      },
      server_manager: [{
          market_place: "miner-01108005-UNMANAGED",
          date: "Minado",
          payouts: "$59595.78",
          status: "0.00002354BTC/24h",
        },
        {
          market_place: "miner-01108005-UNMANAGED",
          date: "Minado",
          payouts: "$59595.78",
          status: "0.00002354BTC/24h",
        },
        {
          market_place: "miner-01108005-UNMANAGED",
          date: "Minado",
          payouts: "$59595.78",
          status: "0.00002354BTC/24h",
        },
      ],
    };
  },
};
</script>

<style>
.customModal {
  box-shadow: 0px 1px 12px rgba(0, 0, 0, 0.4);
  left: 5%;
  position: absolute;
  z-index: 999;
  width: 90%;
  top: 20vh;
  border-radius: 5px;
  overflow: hidden;
}

.customModalTitle {
  background-color: #fff;
  text-align: left;
  padding: 8px 12px;
  font-size: 1.5em;
}

.customModalTitle .close {
  line-height: 32px;
  color: red;
}
</style>
