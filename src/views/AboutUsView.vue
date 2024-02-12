<script setup lang="ts">
import Layout from '@/layouts/AuthLayout.vue'
import { ref } from 'vue'
import AOS from 'aos'
import 'aos/dist/aos.css'
import Card from 'primevue/card'
import Timeline from 'primevue/timeline'
import { onMounted, onBeforeUnmount } from 'vue'
const isMobile = ref(false)
const events = ref([
  {
    status: 'Ordered',
    date: 'Oct 19th 2023',
    icon: 'pi pi-circle',
    color: '#9C27B0',
    image: 'game-controller.jpg',
    content:
      'Web2 Authentication Experience - We created algorand-authentication-component-vue component free for use for anybody.'
  },
  {
    status: 'Shipped',
    date: 'Oct 21st 2023',
    icon: 'pi pi-circle',
    color: '#FF9800',
    content: 'Domain has been registered'
  },
  {
    status: 'Delivered',
    date: 'Oct 26th 2023',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content:
      'We have integrated Folks Router for swapping Gold to Algorand, USDC and BTC and vice versa'
  },

  {
    status: 'Delivered',
    date: 'Nov 1st 2023 ',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content:
      'We have integrated email templates, and on email verification we airdop some algos so that web2 users have even better xp'
  },
  {
    status: 'Delivered',
    date: 'Nov 5th 2023 ',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content: 'Smart contract has been finished with full test coverage'
  },
  {
    status: 'Delivered',
    date: 'Nov 6th 2023',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content: 'ASA.Gold NPM package has been published'
  },
  {
    status: 'Delivered',
    date: 'Nov 12th 2023',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content: 'Eshop is working'
  },
  {
    status: 'Delivered',
    date: 'Nov 13th 2023',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content: 'Testnet launched at https://testnet.asa.gold/'
  },
  {
    status: 'Delivered',
    date: 'Nov 14th 2023',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content:
      'Mainnet launched at https://www.asa.gold/. Gold token has been minted: Gold: 1241944285, and DAO governance token has been minted: GoldDAO: 1241945177'
  },
  {
    status: 'Delivered',
    date: 'Dec 26th 2023',
    icon: 'pi pi-circle',
    color: '#607D8B',
    content: 'Website design improvements'
  }
])
function handleResize() {
  if (window.innerWidth <= 941) {
    isMobile.value = true
  } else {
    isMobile.value = false
  }
}

onMounted(() => {
  if (window.innerWidth <= 941) {
    isMobile.value = true
  }
  window.addEventListener('resize', handleResize)
})

onBeforeUnmount(() => {
  window.removeEventListener('resize', handleResize)
})
AOS.init({
  duration: 800,
  easing: 'ease-in-out',
  once: true
})
</script>

<template>
  <Layout :hideTopMenu="false"> </Layout>
</template>
