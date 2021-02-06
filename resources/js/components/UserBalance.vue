<template>
  <table class="min-w-full leading-normal h-full">
    <thead>
      <tr>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          Profile
        </th>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          Currency
        </th>
        <th
          class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
        >
          Balance
        </th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(user, index) in users" v-bind:key="index" class="h-16">
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <div class="flex items-center">
            <div class="flex-shrink-0 w-10 h-10">
              <img
                class="w-full h-full rounded-full"
                :src="user.profile"
                alt=""
              />
            </div>
            <div class="ml-3">
              <p class="text-gray-900 whitespace-no-wrap">{{ user.name }}</p>
            </div>
          </div>
        </td>
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <p class="text-gray-900 whitespace-no-wrap">{{ user.currency }}</p>
        </td>
        <td class="px-5 py-3 border-b border-gray-200 bg-white text-sm">
          <p class="text-gray-900 whitespace-no-wrap">{{ user.balance }}</p>
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
      users: [
        {
          profile:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2.2&w=160&h=160&q=80",
          name: "Vera Carpenter",
          currency: "BTC",
          balance: "0.0180033",
        },
        {
          profile:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2.2&w=160&h=160&q=80",
          name: "Vera Carpenter",
          currency: "BTC",
          balance: "0.0180033",
        },
        {
          profile:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2.2&w=160&h=160&q=80",
          name: "Vera Carpenter",
          currency: "BTC",
          balance: "0.0180033",
        },
        {
          profile:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2.2&w=160&h=160&q=80",
          name: "Vera Carpenter",
          currency: "BTC",
          balance: "0.0180033",
        },
        {
          profile:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2.2&w=160&h=160&q=80",
          name: "Vera Carpenter",
          currency: "BTC",
          balance: "0.0180033",
        },
      ],
    };
  },
};
</script>
