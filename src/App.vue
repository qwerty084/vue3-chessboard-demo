<script setup lang="ts">
import { RouterView } from 'vue-router';
import TheNavbar from './components/ui/TheNavbar.vue';
</script>

<template>
  <RouterView v-slot="{ Component }">
    <TheNavbar />
    <Transition name="fade" mode="out-in">
      <template v-if="Component">
        <KeepAlive>
          <component :is="Component"></component>
        </KeepAlive>
      </template>
    </Transition>
  </RouterView>
</template>
