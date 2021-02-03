<template>
  <div class="hello" @click="back()">Home</div>
</template>

<script>
export default {
  name: 'Home',
  props: {
    msg: String
  },
  data () {
    return {

    }
  },
  methods: {
    back () {
      this.$router.push('/Index')
    }
  }
}
</script>
<style scoped>
div {
  background-color: aqua;
  height: 1000px;
}
</style>
