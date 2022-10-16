<script setup lang="ts">
import { RouterLink } from 'vue-router';
import { Disclosure, DisclosureButton, DisclosurePanel } from '@headlessui/vue';
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline';
import { ref, onMounted } from 'vue';

const darkMode = ref(false);

onMounted(() => {
  if (document.documentElement.classList.contains('dark')) {
    darkMode.value = true;
  }
});
</script>

<template>
  <Disclosure
    v-slot="{ open }"
    as="nav"
    class="bg-gray-800 fixed z-50 w-full top-0"
  >
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
      <div class="flex h-16 items-center justify-between">
        <div class="flex items-center">
          <div class="hidden sm:ml-6 sm:block">
            <div class="flex space-x-4 link-header">
              <RouterLink to="/">Chessboard</RouterLink>
              <RouterLink to="/about">About</RouterLink>
              <RouterLink to="/docs">Docs</RouterLink>
            </div>
          </div>
        </div>
        <div class="-mr-2 flex sm:hidden">
          <DisclosureButton
            class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"
          >
            <span class="sr-only">Open main menu</span>
            <Bars3Icon
              v-if="!open"
              class="block h-6 w-6 text-gray-300"
              aria-hidden="true"
            />
            <XMarkIcon v-else class="block h-6 w-6" aria-hidden="true" />
          </DisclosureButton>
        </div>
      </div>
    </div>
    <DisclosurePanel class="sm:hidden">
      <div class="mt-3 space-y-1 px-2 pb-5">
        <RouterLink to="/" aria-label="Home">
          <DisclosureButton
            as="div"
            aria-hidden="true"
            class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white"
            >Chessboard</DisclosureButton
          ></RouterLink
        >
        <RouterLink to="/docs" aria-label="Documentation">
          <DisclosureButton
            as="div"
            aria-hidden="true"
            class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white"
            >Docs</DisclosureButton
          ></RouterLink
        >
        <RouterLink to="/about" aria-label="About">
          <DisclosureButton
            as="div"
            aria-hidden="true"
            class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white"
            >About</DisclosureButton
          ></RouterLink
        >
      </div>
    </DisclosurePanel>
  </Disclosure>
</template>
