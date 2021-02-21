<template>
  <a-layout id="components-layout-demo-custom-trigger">
    <a-layout-sider
      style="background: white"
      v-model="collapsed"
      :trigger="null"
      collapsible
    >
      <div class="logo colLayout">
        <a-avatar
          src="http://www.icosky.com/icon/ico/Game/Super%20Mario/Retro%20Mario.ico"
        />
        <div
          class="font4"
          style="margin-left: 25px; margin-top: -8px"
          v-show="!collapsed"
        >
          <p><i>galiview</i></p>
        </div>
      </div>

      <a-menu mode="inline" :default-selected-keys="['1']">
        <a-menu-item key="1">
          <a-icon type="user" />
          <span>首页</span>
        </a-menu-item>
        <a-menu-item key="2">
          <a-icon type="video-camera" />
          <span>游戏</span>
        </a-menu-item>
        <a-menu-item key="3">
          <a-icon type="upload" />
          <span>动漫</span>
        </a-menu-item>
        <a-menu-item>
          <div
            style="
              border-bottom: 3px solid rgba(255, 240, 245);
              margin-top: 10px;
            "
          ></div>
        </a-menu-item>
      </a-menu>
    </a-layout-sider>
    <a-layout>
      <a-layout-header style="background: #fff; padding: 0">
        <div style="position: relative">
          <a-icon
            class="trigger"
            :type="collapsed ? 'menu-unfold' : 'menu-fold'"
            @click="() => (collapsed = !collapsed)"
          />
          <a-input-search
            style="
              width: 350px;
              position: absolute;
              left: 45%;
              top: 50%;
              transform: translate(-50%, -50%);
            "
            placeholder="你要搜索的内容"
            enter-button
            @search="onSearch"
          />
          <a-avatar
            shape="square"
            icon="user"
            style="
              position: absolute;
              right: 0;
              right: 0;
              transform: translateY(50%);
              margin-right: 50px;
            "
          />
        </div>
      </a-layout-header>
      <a-layout-content
        :style="{ margin: '24px 16px', padding: '24px', minHeight: '1000px' }"
      >
        <router-view></router-view>
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
    },
    onCollapse (collapsed, type) {
      console.log(collapsed, type);
    },
    onBreakpoint (broken) {
      console.log(broken);
    },
  }
}
</script>
<style>
#components-layout-demo-responsive .logo {
  height: 32px;
  background: rgba(255, 255, 255, 0.2);
  margin: 16px;
}
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
  font-size: 30px;
  text-shadow: 5px 5px 5px white, 0px 0px 2px black, 2px 2px 3px white;
}

.colLayout {
  display: flex;
  flex-direction: row;
  justify-content: left;
}
</style>