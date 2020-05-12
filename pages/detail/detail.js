// pages/detail/detail.js
var common = require("../../utils/common.js")//访问common.js

Page({

  /**
   * 页面的初始数据
   */
  // 数组用[]，里面每个数据用{}
  data: {
    article: {},//先定义article，数据在onload获取，通过common.js

    // article: {
    //   id: "356412",
    //   title: "特写：2019，天安门城楼前的中国",
    //   poster: "http://image1.chinanews.com.cn/cnsupload/big/2019/10-01/4-426/a7e426b0dd6c43d2bc710fafe810a0d5.jpg",
    //   add_date: "2019-10 - 01",
    //   content: "对于普通民众而言，一场阅兵式，军事装备展示无疑最令人期待。这个昔日饱经炮火、战乱洗礼的民族，此刻正在集中向世界展示70年来国家的发展进步。\n习近平曾说，“我经常看中国近代的一些史料，一看到落后挨打的悲惨场景就痛彻肺腑！”谈及百余年前的甲午战争，他称之为“剜心之痛”。"
    // },
    isAdd:false
  },
  // 添加收藏
  addFavorites:function(){
    let article = this.data.article
    wx.setStorageSync(article.id, article)//存到缓存区
    this.setData({
      isAdd:true
    })
  },

  // 取消收藏
  cancelFavorites:function(){
    let article = this.data.article
    wx.removeStorageSync(article.id)//清除缓存区数据
    this.setData({
      isAdd:false
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let id = options.id//获取传进来的id参数
    // let result = common.getNewsDetail(id)
    // if (result.code == 200){
    //   this.setData({
    //     article:result.news
    //   })
    // }
    // 检查当前新闻是否在收藏夹
    var newarticle = wx.getStorageSync(id)
    // 已存在
    if(newarticle != ""){
      this.setData({
        isAdd: true,
        article: newarticle
      })
    }
    // 不存在
    else{
      let result = common.getNewsDetail(id)
      // 获取新闻内容
      if(result.code = "200"){
        this.setData({
          article:result.news,
          isAdd:false
        })
      }
    }
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})