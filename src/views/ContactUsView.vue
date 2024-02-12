<script setup lang="ts">
import Layout from '@/layouts/AuthLayout.vue'
// import OrganizationChart from "primevue/organizationchart";
import AOS from 'aos'
import 'aos/dist/aos.css'
import { ref } from 'vue'
AOS.init({
  duration: 800,
  easing: 'ease-in-out',
  once: true
})
const selection = ref({})
</script>

<template>
  <Layout :hideTopMenu="false"> </Layout>
</template>
