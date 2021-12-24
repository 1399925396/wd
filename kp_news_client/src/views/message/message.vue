<template>
  <div class="login-container">
    <!-- 搜索框 -->
    <div class="head">
      <van-nav-bar class="app-nav-bar" fixed>
        <template #left>
          <!-- log图标 -->
          <van-image width="100" height="2.8rem" src="http://114.55.59.237:8080/image/logo.jpg" />
        </template>

        <van-button
          class="add"
          slot="title"
          icon="friends-o"
          size="small"
          type="primary"
          color="red"
          to="/message_add"
        ></van-button>

        <template #right>
          <!-- 积分图标 -->
          <van-icon name="medal-o" size="30px" @click="integral" />
          <p style="color:#ffffff" @click="integral">积分</p>
        </template>
      </van-nav-bar>
    </div>
    <div class="message_search">
      <van-search shape="round" placeholder="请输入搜索关键词" />
    </div>

    <div class="message_list" v-for="(item, i) of useritem" :key="i">
      <van-cell
        :title="item.nickname"
        size="small"
        label="暂无消息"
        :icon="`${item.headImg}`"
        :to="{name:'message_detail',params:{id:item.id}}"
      />
    </div>
    <footer-nav :seleted="1"></footer-nav>
  </div>
</template>

<script>
import { getUserA } from "@/api/user.js";
import FooterNav from "@/components/FooterNav.vue";

export default {
  name: "message",
  components: {
    "footer-nav": FooterNav
  },
  props: {},
  data() {
    return {
      useritem: ""
    };
  },
  computed: {},
  watch: {},
  created() {
    this.getUserAitem();
  },
  methods: {
    async getUserAitem() {
      try {
        let result = await getUserA();

        if (result.code === "0") {
          this.useritem = result.data;
        } else {
          throw result.msg;
        }
      } catch (error) {
        this.$dialog.alert({ title: "错误", message: error });
      }
    },
    news() {
      this.$router.push("/news");
    },
    integral() {
      this.$router.push("/integral");
    }
  }
};
</script>

<style scoped lang="less">
.login-container {
  top: 0;
  margin: 0;
  padding: 0;
}
.head {
  padding-bottom: 50px;
  .app-nav-bar {
    background-color: red;
    height: 2.8rem;
  }
  .add {
    margin-left: 8rem;
    .van-icon {
      font-size: 26px;
    }
    .van-button__text {
      font-size: 14px;
    }
  }
  .van-icon {
    color: #fff;
  }
  .integral_icon {
    color: white;
  }
}

.message_list {
  .van-icon {
    display: block;
    margin: 5px 0;
    font-size: 40px;
  }
}
.message_search {
  margin-top: 5px;
}
</style>