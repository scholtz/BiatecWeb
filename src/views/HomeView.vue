<script setup lang="ts">
import Layout from '@/layouts/PublicLayout.vue'
import Card from 'primevue/card'
import Button from 'primevue/button'
import IconNFTs from '@/assets/projects/nfts.svg?raw'
import IconGold from '@/assets/projects/gold.svg?raw'
import IconAccounting from '@/assets/projects/accounting.svg?raw'
import IconBiatec from '@/assets/projects/biatec.svg?raw'
import IconDEX from '@/assets/projects/dex.svg?raw'
import IconScheduler from '@/assets/projects/scheduler.svg?raw'
import IconWallet from '@/assets/projects/wallet.svg?raw'
import IconAudits from '@/assets/projects/audits.svg?raw'
import IconIdentity from '@/assets/projects/identity.svg?raw'

/* eslint-disable no-useless-escape */
</script>
<template>
  <Layout :hideTopMenu="false">
    <div class="flex flex-column h-full">
      <div class="text-left">
        <div class="main-logo" v-html="IconBiatec"></div>
      </div>
      <div class="flex-grow-1"></div>
      <Card class="m-0 text-center">
        <template #content>
          <div class="flex justify-center">
            <div
              class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-1 md:gap-2 justify-items-center items-center text-center"
            >
              <a href="https://dex.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  CLAMM
                </div>
              </a>
              <a href="https://google.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  MCP
                </div>
              </a>
              <a
                href="https://router.api.biatec.io/swagger/"
                target="_blank"
                rel="noopener noreferrer"
              >
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Router
                </div>
              </a>
              <a href="https://aramid.finance" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Bridge
                </div>
              </a>
              <a href="https://wallet.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Wallet
                </div>
              </a>
              <a href="https://www.vote-coin.com" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  VoteCoin
                </div>
              </a>
              <a href="https://algorand.scan.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Explorer
                </div>
              </a>
              <a href="https://www.explodinos.com" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Explodinos
                </div>
              </a>
              <a href="https://asa.gold" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Gold
                </div>
              </a>
              <a href="https://identity.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Identity
                </div>
              </a>
              <a href="https://scheduler.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Scheduler
                </div>
              </a>
              <a href="https://audits.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Audits
                </div>
              </a>
              <a href="https://gas-station.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Gas station
                </div>
              </a>
              <a href="https://learn.biatec.io" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Learn
                </div>
              </a>
              <a href="/contact-biatec" target="_blank" rel="noopener noreferrer">
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Contact us
                </div>
              </a>
              <a
                href="https://github.com/scholtz?tab=repositories&q=biatec&type=&language=&sort="
                target="_blank"
                rel="noopener noreferrer"
              >
                <div class="button mx-1 md:mx-2 p-3 md:p-4 px-4 md:px-6 text-sm md:text-lg">
                  Github
                </div>
              </a>
            </div>
          </div>
        </template>
      </Card>
    </div>
  </Layout>
</template>
<style>
.svg-image {
  height: 3em;
}
/** professional button styling with linear gradient */
.button {
  background: linear-gradient(45deg, hsl(229, 87%, 32%), hsl(202, 100%, 51%));
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 0.25em;
  transition: background-color 0.3s ease;
}
.button:hover {
  background: linear-gradient(45deg, hsl(229, 87%, 42%), hsl(202, 100%, 61%));
}
.main-logo {
  height: 6vh;
  max-width: 20vw;
  fill: white;
  color: red;
  text-align: left;
}
@media (min-width: 1px) {
  .main-logo {
    height: 20vh;
    max-width: 100vw;
  }
  .button {
    min-width: 90vw;
  }
}
@media (min-width: 768px) {
  .main-logo {
    height: 10vh;
  }
  .button {
    min-width: 21vw;
  }
}
@media (min-width: 1024px) {
  .main-logo {
    height: 15vh;
  }
  .button {
    min-width: 11vw;
  }
}
</style>
