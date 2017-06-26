<template>
  <tr>
    <td>
      {{items.base}}
    </td>
    <td>
      {{items.past_simple}}
    </td>
    <td>
      {{items.past_participle}}
    </td>
  </tr>
</template>
<script>
  export default {
    name: 'tableItem',
    props: ['items']

  }
</script>
<style>

</style>
