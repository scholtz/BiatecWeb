<script setup lang="ts">
import TopHeader from '@/components/PageHeader.vue'
import PageFooter from '@/components/PageFooter.vue'
</script>
<template>
  <div class="flex flex-column min-h-full p-0 m-0">
    <TopHeader :hideTopMenu="false" />
    <div class="flex-grow-1 flex flex-column m-2">
      <slot />
    </div>
    <PageFooter />
  </div>
</template>
