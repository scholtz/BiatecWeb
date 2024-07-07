<script setup lang="ts">
import Layout from '@/layouts/PublicLayout.vue'
import AOS from 'aos'
import Card from 'primevue/card'
import Button from 'primevue/button'
import 'aos/dist/aos.css'
import { onMounted } from 'vue'
onMounted(() => {
  setTimeout(() => {
    AOS.init({
      duration: 800,
      easing: 'ease-in-out',
      once: true
    })
  }, 10)
})
import IconNFTs from '@/assets/projects/nfts.svg?raw'
import IconGold from '@/assets/projects/gold.svg?raw'
import IconAccounting from '@/assets/projects/accounting.svg?raw'
import IconBiatec from '@/assets/projects/biatec.svg?raw'
import IconDEX from '@/assets/projects/dex.svg?raw'
import IconScheduler from '@/assets/projects/scheduler.svg?raw'
import IconWallet from '@/assets/projects/wallet.svg?raw'
import IconAudits from '@/assets/projects/audits.svg?raw'

/* eslint-disable no-useless-escape */
</script>
<template>
  <Layout :hideTopMenu="false">
    <div class="text-center">
      <div data-aos="fade-right" class="m-2 md:m-6">
        <Card class="col-12 md:col-offset-5 md:col-6">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconBiatec"></div>
                </h2>
                <p>
                  First gold and silver coins in usage at 500 BC to 100 BC around Bratislava area
                  were minted with label BIATEC. Slovak National Bank used the Biatec coin image on
                  the official slovak fiat currency before EUR was adopted.
                </p>
                <p>
                  We believe that Algorand and whole AVM ecosystem provides new form of digital
                  identity and payments solutions. The brand name Biatec creates for us historic
                  narrative as we live now the historic moments of early crypto adoption.
                </p>
                <p>
                  Algorand is novel distributed ledger technology (DLT) which does not fork because
                  of efficiency of PPoS. It provides instant transaction finality, sub 3 second
                  economic finality and has highest AMM swap throughput. Users do not pay for failed
                  transactions and each transfer of value even in milions costs less then a penny.
                </p>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-left" class="m-2 md:m-6">
        <Card class="col-12 md:col-6 md:col-offset-1">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconDEX"></div>
                </h2>
                With help from Algorand and all expert governors in the xgov program we are building
                Concentrated liqudity AMM on Algorand. Stay tuned.
                <div>
                  <a href="https://dex.biatec.io" target="_blank">
                    <Button class="mt-4">Go to DEX</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-right" class="m-2 md:m-6">
        <Card class="col-12 md:col-offset-5 md:col-6">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconGold"></div>
                </h2>
                In november 2023 we launched to mainnet the novel gold tokenization platform -
                ASA.Gold. Everybody can see the true composition of the gold reserves. For each gold
                item in reserves we minted the NFT, and can be purchased in our onchain eshop. At
                our secondary NFT marketplace you can sell your NFTs at higher price, you can use
                other algorand's NFT marketplaces or you can redeem the gold item by parcel delivery
                to your home address.
                <div>
                  <a href="https://www.asa.gold" target="_blank">
                    <Button class="mt-4">Get your GOLD now!</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-left" class="m-2 md:m-6">
        <Card class="col-12 md:col-6 md:col-offset-1">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconScheduler"></div>
                </h2>
                Biatec scheduler helps anyone on algorand blockchain to execute periodically smart
                contracts.
                <div>
                  <a href="https://scheduler.biatec.io" target="_blank">
                    <Button class="mt-4">DCA onchain</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-right" class="m-2 md:m-6">
        <Card class="col-12 md:col-offset-5 md:col-6">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconNFTs"></div>
                </h2>
                Besides the gold item NFTs we have issued 1 NFT collection.
                <div>
                  <a href="https://nft.biatec.io" target="_blank">
                    <Button class="mt-4">Get one of our NFTs now</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-left" class="m-2 md:m-6">
        <Card class="col-12 md:col-6 md:col-offset-1">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconAccounting"></div>
                </h2>
                Biatec accounting helps you with accounting related issues. In the development is
                the invoicing application so that you can issue the algorand invoices in legal
                compliance.
                <div>
                  <a href="https://accounting.biatec.io" target="_blank">
                    <Button class="mt-4">Issue your first invoice today</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-right" class="m-2 md:m-6">
        <Card class="col-12 md:col-offset-5 md:col-6">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconWallet"></div>
                </h2>

                Biatec Wallet is the first Algorand open source wallet started back in 2021, and is
                feature rich including multisig support, periodic payment scheduler and multiple dex
                aggregators support.
                <div>
                  <a href="https://wallet.biatec.io" target="_blank">
                    <Button class="mt-4">Go to the Wallet</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>

      <div data-aos="fade-left" class="m-2 md:m-6">
        <Card class="col-12 md:col-6 md:col-offset-1">
          <template #content>
            <div class="grid">
              <div class="col-12">
                <h2 class="text-primary">
                  <div class="svg-image" v-html="IconAudits"></div>
                </h2>
                <p>Do audits of your solution with Biatec.</p>
                <div>
                  <a href="https://audits.biatec.io" target="_blank">
                    <Button class="mt-4">Do audits</Button>
                  </a>
                </div>
              </div>
            </div>
          </template>
        </Card>
      </div>
    </div>
  </Layout>
</template>
<style>
.svg-image {
  height: 3em;
}
</style>
