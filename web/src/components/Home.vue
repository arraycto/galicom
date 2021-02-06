<template>
  <a-layout id="components-layout-demo-custom-trigger">
    <a-layout-sider style="background:white" v-model="collapsed" :trigger="null" collapsible>
      <a-avatar class="logo" src="http://www.icosky.com/icon/ico/Game/Super%20Mario/Retro%20Mario.ico"/>
        <div class="font4">
          <p><i>gali</i></p>
      </div>
      <a-menu mode="inline" :default-selected-keys="['1']">
        <a-menu-item key="1">
          <a-icon type="user" />
          <span>nav 1</span>
        </a-menu-item>
        <a-menu-item key="2">
          <a-icon type="video-camera" />
          <span>nav 2</span>
        </a-menu-item>
        <a-menu-item key="3">
          <a-icon type="upload" />
          <span>nav 3</span>
        </a-menu-item>
      </a-menu>
    </a-layout-sider>
    <a-layout>
      <a-layout-header style="display:flex; flex:row; background: #fff; padding: 0">
        <a-icon
          class="trigger"
          :type="collapsed ? 'menu-unfold' : 'menu-fold'"
          @click="() => (collapsed = !collapsed)" 
        />
        <a-input-search style="margin-top: 15px; width: 500px; margin-left:450px" placeholder="input search text" enter-button @search="onSearch" />
      </a-layout-header>
      <a-layout-content
        :style="{ margin: '24px 16px', padding: '24px', minHeight: '1000px' }"
      >
        Content
      </a-layout-content>
    </a-layout>
  </a-layout>
</template>

<script>
export default {
  name: 'Home',
  props: {
    msg: String
  },
  data () {
    return {
      collapsed: false,
    }
  },
  methods: {
    back () {
      this.$router.push('/Index')
    }
  }
}
</script>
<style>
#components-layout-demo-custom-trigger .trigger {
  font-size: 18px;
  line-height: 64px;
  padding: 0 24px;
  cursor: pointer;
  transition: color 0.3s;
}

#components-layout-demo-custom-trigger .trigger:hover {
  color: #1890ff;
}

#components-layout-demo-custom-trigger .logo {
  height: 32px;
  background: rgba(255, 255, 255, 0.062);
  margin: 16px;
}

#components-layout-demo-custom-trigger .font4 > p {
  font-size: 40px;
  text-shadow: 5px 5px 5px white, 0px 0px 2px black, 2px 2px 3px white;
}

</style>