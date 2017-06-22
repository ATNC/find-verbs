<template>
  <div>
    <h1 class="ui center aligned header">Find your verb</h1>



    <div class="ui container">
      <div class="ui icon massive input loading">
      <input class="search loading" type="text" placeholder="Search...">
      <i class="search icon"></i>
    </div>
      <table class="ui celled table">
        <thead>
        <th>Employee</th>
        <th>Correct Guesses</th>
        </thead>
        <tbody>
        <tr>
          <td>
            <h4 class="ui image header"></h4>
            <img src="assets/images/wireframe/square-image.png" class="ui mini rounded image">
            <div class="content">
              Lena
              <div class="sub header">Human Resources
              </div>
            </div>
          </td>
          <td>
            22
          </td>
        </tr>
        <tr>
          <td>
            <h4 class="ui image header"></h4>
            <img src="assets/images/wireframe/square-image.png" class="ui mini rounded image">
            <div class="content">
              Matthew
              <div class="sub header">Fabric Design
              </div>
            </div>
          </td>
          <td>
            15
          </td>
        </tr>
        <tr>
          <td>
            <h4 class="ui image header"></h4>
            <img src="assets/images/wireframe/square-image.png" class="ui mini rounded image">
            <div class="content">
              Lindsay
              <div class="sub header">Entertainment
              </div>
            </div>
          </td>
          <td>
            12
          </td>
        </tr>
        <tr>
          <td>
            <h4 class="ui image header"></h4>
            <img src="assets/images/wireframe/square-image.png" class="ui mini rounded image">
            <div class="content">
              Mark
              <div class="sub header">Executive
              </div>
            </div>
          </td>
          <td>
            11
          </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>

  export default {
    name: 'tableContent'
  }
</script>
<style>
 h1.ui.center.header {
    margin-top: 2em;
    padding: 2em 0em;
  }
</style>
