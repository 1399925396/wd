<template>
  <div id="user-profile">
    <van-nav-bar left-text="返回" left-arrow @click-left="$router.back()"></van-nav-bar>

    <van-form>
      <van-field label="用户Id" v-model="userForm.id" type="text" disabled />

      <van-field label="用户名" v-model="userForm.nickname" type="text" placeholder="请输入用户名" readonly />

      <van-field label="邮箱" v-model="userForm.email" type="email" placeholder="请输入邮箱" readonly />

      <van-field label="电话" v-model="userForm.phone" type="tel" placeholder="请输入电话" readonly />

      <van-field name="radio" label="性别">
        <template #input>
          <van-radio-group v-model="userForm.sex" direction="horizontal" disabled>
            <van-radio name="男">男</van-radio>
            <van-radio name="女">女</van-radio>
          </van-radio-group>
        </template>
      </van-field>
      <van-field
        v-model="userForm.birthday"
        readonly
        clickable
        name="datetimePicker"
        label="出生日期"
        placeholder="点击选择时间"
      />
      <van-popup v-model="showPicker" position="bottom">
        <van-datetime-picker
          @cancel="showPicker = false"
          v-model="userForm.birthday"
          :value="userForm.birthday"
          type="date"
          title="选择年月日"
          :min-date="minDate"
          :max-date="maxDate"
        />
      </van-popup>
      <!-- 地区选择 -->
      <van-field
        v-model="userForm.address"
        readonly
        clickable
        name="area"
        label="地区选择"
        placeholder="点击选择省市区"
      />
      <van-popup v-model="showArea" position="bottom">
        <van-area :area-list="areaList" @cancel="showArea = false" />
      </van-popup>

      <van-field name="uploader" label="头像">
        <template #input>
          <van-uploader name="avatar" v-model="headImg" :max-count="1" />
        </template>
      </van-field>

      <div style="margin: 16px;">
        <van-button round block type="info" color="red" native-type="submit" @click="news">发消息</van-button>
      </div>
    </van-form>
  </div>
</template>

<script>
import { getDetailById } from "@/api/user.js";
import { areaList } from "@vant/area-data";

import { Toast } from "vant";

import { mapState } from "vuex"; // mapGetters

export default {
  data() {
    return {
      // 日期
      showPicker: false,
      minDate: new Date(1980, 0, 1),
      maxDate: new Date(2022, 0, 1),
      // 地址
      showArea: false,
      areaList, // 数据格式见 Area 组件文档

      userForm: {
        //表单中的字段名与数据库中用户表的字段名要求一致
        id: null,
        username: "",
        nickname: "",
        email: "",
        phone: "",
        sex: "男",
        birthday: "",
        address: ""
      },
      headImg: [],
      //规则:字母数字‘6~12
      regNamePwd: /^[a-z0-9]{6,12}$/i,
      regPhone: /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/,
      regEmail: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
    };
  },
  props: {
    id: Number
  },
  computed: {
    ...mapState("user", ["user", "isLogin"])
  },
  async created() {
    try {
      let params = { id: this.id };
      let result = await getDetailById(params);
      if (result.code === "0") {
        this.userForm = result.data;
        this.headImg = [];
        this.headImg.push({
          url: this.userForm.headImg
        });
        return;
      }
      throw result;
    } catch (error) {
      this.$dialog.alert({
        title: "获取用户数据失败",
        message: error
      });
    }
  },
  methods: {
    news() {
      Toast("暂时不能发消息哦");
    }
  }
};
</script>

<style>
</style>
