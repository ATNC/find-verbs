<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h2>Essential Links</h2>
    <!--<ul>-->
    <!--<li><a href="https://vuejs.org" target="_blank">Core Docs</a></li>-->
    <!--<li><a href="https://forum.vuejs.org" target="_blank">Forum</a></li>-->
    <!--<li><a href="https://gitter.im/vuejs/vue" target="_blank">Gitter Chat</a></li>-->
    <!--<li><a href="https://twitter.com/vuejs" target="_blank">Twitter</a></li>-->
    <!--<br>-->
    <!--<li><a href="http://vuejs-templates.github.io/webpack/" target="_blank">Docs for This Template</a></li>-->
    <!--</ul>-->
    <!--<h2>Ecosystem</h2>-->
    <!--<ul>-->
    <!--<li><a href="http://router.vuejs.org/" target="_blank">vue-router</a></li>-->
    <!--<li><a href="http://vuex.vuejs.org/" target="_blank">vuex</a></li>-->
    <!--<li><a href="http://vue-loader.vuejs.org/" target="_blank">vue-loader</a></li>-->
    <!--<li><a href="https://github.com/vuejs/awesome-vue" target="_blank">awesome-vue</a></li>-->
    <!--</ul>-->

    <ul>
      <li v-for="user in filteredParams">
        {{user.firstname }} {{ user.lastname }}
      </li>
    </ul>
    input val
    <div>
      <p v-text="input_val"></p>
    </div>
    <div>
      <input type="text" v-model="input_val">
    </div>
  </div>
</template>

<script>
  export default {
    name: 'hello',
    data () {
      return {
        input_val: '',
        msg: 'Welcome to Your Vue.js App',
        users: [
          {firstname: 'Sebastian', lastname: 'Eschweiler'},
          {firstname: 'Bill', lastname: 'Smith'},
          {firstname: 'John', lastname: 'Porter'}
        ]
      }
    },
    computed: {
      filteredParams () {
        return this.users.filter(item =>  {
            return item.firstname.toLocaleLowerCase().indexOf(this.input_val.toLocaleLowerCase()) > -1
        })
      }
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  h1, h2 {
    font-weight: normal;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  li {
    display: inline-block;
    margin: 0 10px;
  }

  a {
    color: #42b983;
  }
</style>
