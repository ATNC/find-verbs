<template>
  <div id="app">
    <table-content v-bind:data="verbs"></table-content>
  </div>
</template>

<script>
  import TableContent from './components/TableContent'
  import verbsData from './verbs.json'
  export default {
    name: 'app',
    components: {
      TableContent
    },
    data () {
      return {
        verbs: verbsData
      }
    }
  }
</script>

<style>



</style>
