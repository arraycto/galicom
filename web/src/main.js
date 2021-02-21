import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import VueResource from 'vue-resource'
import Home from './components/Home'
import 'ant-design-vue/dist/antd.css';
import Antd from 'ant-design-vue';

Vue.use(VueResource)
Vue.use(VueRouter)
Vue.use(Antd);
Vue.config.productionTip = false

const routes1 = [
    { path: "/home", component: Home },
    { path: '*', redirect: '/home' }
]
const router = new VueRouter({
    routes: routes1,
})
new Vue({
    router,
    history,
    render: h => h(App),
}).$mount('#app')
