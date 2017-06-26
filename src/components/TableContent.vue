<template>
  <div>
    <h1 class="ui center aligned header">Find your verb</h1>



    <div class="ui container">
      <div class="ui icon massive input loading">
      <input
        class="search loading"
        type="text"
        v-model="search_field"
        placeholder="Search..."
        v-on:keyup="is_search=false"
        v-on:keydown="is_search=true"
      >
      <i class="search icon" v-if="is_search"></i>
    </div>
      <table class="ui celled table">
        <thead>
        <th>Base form</th>
        <th>Past Simple (V2)</th>
        <th>Past Participle (V3)</th>
        </thead>
        <tbody>
          <table-item
            v-for="item in filteredVerbs"
            :key="item.base_form"
            v-bind:items="item"
          >

          </table-item>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>

  import TableItem from './TableItem'

  export default {
    name: 'tableContent',
    components: {
      TableItem
    },
    data () {
      return {
        search_field: '',
        is_search: false
      }
    },
    props: ['data'],
    computed: {
      filteredVerbs: function() {
        return this.data.filter(
          value => value.searchedfield.toLowerCase().indexOf(this.search_field.toLowerCase()) >= 0
        )
      }
    }
  }
</script>
<style>
 h1.ui.center.header {
    margin-top: 2em;
    padding: 2em 0em;
  }
</style>
