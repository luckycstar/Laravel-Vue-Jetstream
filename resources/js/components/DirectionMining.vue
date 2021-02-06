<template>
  <div>
    <div class="bg-white rounded shadow p-5">
      <div class="flex flex-row flex-wrap flex-grow justify-around">
        <button
          class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-10 border border-blue-700 rounded"
          :class="flag_one ? 'bg-blue-900':''"
          @click="MiningOne"
        >
          Direction Mining(1)
        </button>
        <button
          class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-10 border border-blue-700 rounded"
          @click="MiningTwo"
          :class="flag_two ? 'bg-blue-900':''"
        >
          Direction Mining(2)
        </button>
      </div>
      <div class="flex flex-row flex-wrap flex-grow mt-5">
        <div class="w-full md:w-1/3 p-3 text-center">
          <h1 class="font-bold text-sm uppercase text-gray-400">
            Proyectado
            <strong class="text-gray-600 text-base">Semanal</strong> Ingreso
          </h1>
          <h1 class="font-bold text-2xl uppercase text-gray-600">
            {{ seminal }} <small>BTC</small>
          </h1>
          <h1 class="font-bold text-sm uppercase text-gray-400">
            ~ &euro;{{ BTC_seminal.toFixed(2) }}
          </h1>
        </div>
        <div class="w-full md:w-1/3 p-3 text-center">
          <h1 class="font-bold text-sm uppercase text-gray-400">
            Proyectado
            <strong class="text-gray-600 text-base">Mensual</strong> Ingreso
          </h1>
          <h1 class="font-bold text-2xl uppercase text-gray-600">
            {{ Mensual }} <small>BTC</small>
          </h1>
          <h1 class="font-bold text-sm uppercase text-gray-400">
            ~ &euro;{{ BTC_Mensual.toFixed(2) }}
          </h1>
        </div>
        <div class="w-full md:w-1/3 p-3 text-center">
          <h1 class="font-bold text-sm uppercase text-gray-400">
            Proyectado
            <strong class="text-gray-600 text-base">Anual</strong> Ingreso
          </h1>
          <h1 class="font-bold text-2xl uppercase text-gray-600">
            {{ Anual }} <small>BTC</small>
          </h1>
          <h1 class="font-bold text-sm uppercase text-gray-400">
            ~ &euro;{{ BTC_Anual.toFixed(2) }}
          </h1>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "InforCard",
  data() {
    return {
      BTCprice: 30949.81,

      seminal_1: 0.00025,
      Mensual_1: 0.0025,
      Anual_1: 0.25,
      BTC_seminal_1: 0,
      BTC_Mensual_1: 0,
      BTC_Anual_1: 0,

      seminal_2: 0.00036,
      Mensual_2: 0.0195,
      Anual_2: 0.85,
      BTC_seminal_2: 0,
      BTC_Mensual_2: 0,
      BTC_Anual_2: 0,

      seminal: 0,
      Mensual: 0,
      Anual: 0,
      BTC_seminal: 0,
      BTC_Mensual: 0,
      BTC_Anual: 0,

      flag_one: false,
      flag_two: false,
    };
  },
  created() {
    this.BTC_seminal_1 = this.seminal_1 * this.BTCprice;
    this.BTC_Mensual_1 = this.Mensual_1 * this.BTCprice;
    this.BTC_Anual_1 = this.Anual_1 * this.BTCprice;

    this.BTC_seminal_2 = this.seminal_2 * this.BTCprice;
    this.BTC_Mensual_2 = this.Mensual_2 * this.BTCprice;
    this.BTC_Anual_2 = this.Anual_2 * this.BTCprice;

    this.MiningOne();
  },
  methods: {
    MiningOne(){
      this.seminal = this.seminal_1
      this.Mensual = this.Mensual_1
      this.Anual = this.Anual_1
      this.BTC_seminal = this.BTC_seminal_1
      this.BTC_Mensual = this.BTC_Mensual_1
      this.BTC_Anual = this.BTC_Anual_1

      this.flag_one = true
      this.flag_two = false
    },
    MiningTwo(){
      this.seminal = this.seminal_2
      this.Mensual = this.Mensual_2
      this.Anual = this.Anual_2
      this.BTC_seminal = this.BTC_seminal_2
      this.BTC_Mensual = this.BTC_Mensual_2
      this.BTC_Anual = this.BTC_Anual_2

      this.flag_one = false
      this.flag_two = true
    },
  }
};
</script>
