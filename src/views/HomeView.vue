<script setup lang="ts">
import Layout from '@/layouts/AuthLayout.vue'
import AOS from 'aos'
import 'aos/dist/aos.css'
AOS.init({
  duration: 800,
  easing: 'ease-in-out',
  once: true
})
</script>
<template>
  <Layout :hideTopMenu="false">
    <div class="grid grid-nogutter surface-section backgroundImage text-800">
      <div class="container">
        <div
          class="col-12 md:col-12 sm:col-12 text-white welcome-banner text-center nav-text text-center"
        >
          <div class="welcome-content" data-aos="fade-down">
            <section class="fontcolor">
              <div class="sm:m-2 md:m-4 allfont">
                <h1 class="sm:m-2 md:m-4 title">Biatec Accounting Ledger Service</h1>
                <div class="sm:m-2 md:m-4">Issue multicurrency invoices</div>
                <div class="sm:m-2 md:m-4">Manage your contacts</div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </div>
    <section class="services-area-two privacy-body ptb-80 bg-f9f6f6">
      <div class="container">
        <div class="section-title" data-aos="fade-left">
          <h2>Issue multicurrency invoices</h2>
          <div class="bar"></div>
          <p>
            Have you ever needed to issue invoice in fixed USDC price with 30 day moving average
            Algorand payout and for government record the EUR price? This service allow you to do
            this and much more.
          </p>
        </div>
      </div>
      <div class="container">
        <div class="row h-100 justify-content-center align-items-center">
          <div class="col-12 md:col-6 services-content" data-aos="fade-up">
            <div class="section-title">
              <h2>Manage your contacts</h2>
              <div class="bar"></div>
              <p>Manage your business contacts and invoice them products or services</p>
            </div>
          </div>
          <div class="lg:col-6 iot-features-image" data-aos="fade-up">
            <img src="/images/policy/1.png" alt="image" />
          </div>
        </div>
        <div class="row h-100 justify-content-center align-items-center">
          <div class="lg:col-6 iot-features-image" data-aos="fade-up">
            <img src="/images/policy/3.png" alt="image" />
          </div>
          <div class="col-12 md:col-6 services-content" data-aos="fade-up">
            <div class="section-title">
              <h2>Accounting Ledger API</h2>
              <div class="bar"></div>
              <p>
                Issue invoices using the API service. Track the payment and invoice status of
                algorand issued invoices.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </Layout>
</template>

<style>
.fontcolor {
  font-size: '30px';
}
.background-container {
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
</style>
