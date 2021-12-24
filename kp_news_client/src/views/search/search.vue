
<template>
  <div>
    <!-- 搜索框 -->
    <div>
      <form action="/">
        <van-search
          v-model="value"
          show-action
          placeholder="请输入搜索关键词"
          @search="onSearch"
          @cancel="onCancel"
        />
      </form>
    </div>
    <!-- 内容 -->
    <div>
      <van-cell title="当前热搜" icon="fire" size="large" />
      <van-cell title="实现民主自由人权，中国做对了什么？" icon="fire-o" />
      <van-cell title="延庆冬奥村（冬残奥村）开展“全要素”运行测试" icon="fire-o" />
      <van-cell title="让更多人触摸珍藏的历史——老英雄孙景坤捐赠十六枚奖章记事" icon="fire-o" />
      <van-cell title="截至12月7日24时新型冠状病毒肺炎疫情最新情况" icon="fire-o" />
      <van-cell title="神舟十二号航天员乘组天外归来首次公开亮相" icon="fire-o" />
    </div>
  </div>
</template>

<script>
import { Toast } from "vant";
export default {
  data() {
    return {
      value: ""
    };
  },
  methods: {
    onSearch(val) {
      Toast(val);
    },
    onCancel() {
      this.$router.go(-1);
    }
  }
};
</script>

<style>
</style>