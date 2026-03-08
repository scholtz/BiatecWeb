<script setup lang="ts">
import TopHeader from '@/components/PageHeader.vue'
import PageFooter from '@/components/PageFooter.vue'
</script>
<template>
  <div class="flex flex-column min-h-full p-0 m-0">
    <video
      :autoplay="true"
      :muted="true"
      :loop="true"
      style="
        width: 100%;
        height: 100%;
        object-fit: cover;
        position: fixed;
        top: 0;
        left: 0;
        z-index: -1;
      "
    >
      <source src="../assets/biatec-background.mp4" type="video/mp4" />
    </video>

    <div class="flex-grow-1 flex flex-column m-2">
      <slot />
    </div>
    <!-- 
    <PageFooter /> -->
  </div>
</template>
