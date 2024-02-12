<script setup lang="ts">
import TopHeader from '@/components/TopHeader2.vue'
import PageFooter from '@/components/PageFooter.vue'
import ForcedEmailVerification from '@/components/ForcedEmailVerification.vue'

import { onMounted, ref } from 'vue'

import { useToast } from 'primevue/usetoast'
import { useAppStore } from '@/stores/app'
import Button from 'primevue/button'
const props = defineProps<{
  hideTopMenu: boolean
}>()

const store = useAppStore()
const toast = useToast()

const forceEmailValidation = false

import { AlgorandAuthentication } from 'algorand-authentication-component-vue'
import type { IAuthenticationStore, INotification } from 'algorand-authentication-component-vue'

function onStateChange(e: IAuthenticationStore) {
  console.log('onStateChange', e)
  store.state.authState.isAuthenticated = e.isAuthenticated
  store.state.authState.arc14Header = e.arc14Header
  store.state.authState.wallet = e.wallet
  store.state.authState.account = e.account
  store.state.authState.count = e.count
  store.state.authState.arc76email = e.arc76email
  store.state.authState.anyWallet = e.anyWallet
}
function onNotification(e: INotification) {
  try {
    if (e.severity == 'error') {
      console.error(e.message)
    } else {
      console.log('onNotification', e)
    }
    const ret = toast.add({
      severity: e.severity,
      detail: e.message,
      life: 5000
    })
    console.log('ret', ret)
  } catch (e: any) {
    console.error(e.message)
  }
}
console.log('AlgorandAuthentication', AlgorandAuthentication)
const authComponent = ref<InstanceType<typeof AlgorandAuthentication>>()

onMounted(() => {
  store.state.authComponent = authComponent.value
  console.log('store.state.authComponent', store.state.authComponent)

  console.log('store.state.anyWallet', store.state.authState.anyWallet)
})
</script>

<template>
  <div class="flex flex-column min-h-full p-0 m-0">
    <Toast />
    <TopHeader :hideTopMenu="props.hideTopMenu" />
    <Suspense>
      <AlgorandAuthentication
        arc14Realm="BiatecAccounting"
        @onStateChange="onStateChange"
        @onNotification="onNotification"
        ref="authComponent"
        :wallets="['pera', 'exodus', 'defly', 'myalgo', 'mnemonic']"
        useDemoMnemonics="novel consider desert ribbon cage first audit couple discover seed text guard crater exchange roof stable march tortoise hockey magic dawn jacket cricket ability bright"
        :algodHost="store.state.algodHost"
        :algodPort="store.state.algodPort"
        :algodToken="store.state.algodToken"
        :store="store.state.authState"
      >
        <div
          v-if="store.state.authState.isAuthenticated && forceEmailValidation"
          class="flex flex-column flex-grow-1 m-2"
        >
          <ForcedEmailVerification>
            <div class="flex-grow-1">
              <slot />
            </div>
          </ForcedEmailVerification>
        </div>
        <div
          v-else-if="store.state.authState.isAuthenticated"
          class="flex flex-column flex-grow-1 m-2"
        >
          <slot />
        </div>
        <div v-else class="flex flex-column flex-grow-1">
          <div class="flex-grow-1 m-2 text-center">
            <h1>Authenticate please</h1>

            <Button @click="store.state.authComponent?.auth()">
              Use algorand authentication
              <span class="pi pi-user ml-2"></span
            ></Button>
          </div>
        </div>
      </AlgorandAuthentication>
    </Suspense>
    <PageFooter />
  </div>
</template>
