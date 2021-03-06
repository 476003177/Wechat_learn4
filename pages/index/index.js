// pages/detail/detail.js
var common = require("../../utils/common.js")//访问common.js

var isEnd = false//判断新闻是否加载完毕，php版本
var currentPage = 1//当前页面，php版本

Page({

  /**
   * 页面的初始数据
   */
  // 数组用[]，里面每个数据用{}
  data: {
    // 单机版，php版本不再读取swiperImg
    // swiperImg: [
    //   { src: "http://image1.chinanews.com.cn/cnsupload/big/2019/10-01/4-426/a7e426b0dd6c43d2bc710fafe810a0d5.jpg" },
    //   { src: "http://i2.chinanews.com/simg/cmshd/2019/10/05/998e12aa71f248d4a797761b18e48418.jpg" },
    //   { src: "http://i2.chinanews.com/simg/cmshd/2019/10/01/c5391220f28d49bdbd14c58a4300bde0.jpg" }
    // ],
    newsList: [],//先定义newsList，数据在onload获取，通过common.js
    loading:false,//按钮loading特效
    loadMoreText:"加载更多"
  },

  goToDetail:function(e){
    // 获取携带data-id的数据
    let id = e.currentTarget.dataset.id
    // 携带新闻id进行页面跳转
    // wx.navigateTo()：保留当前页面，并在上方打开指定新页面，可按返回或者wx.navigateBack()接口返回到原页面；参数与路径之间用？相隔，参数键与参数值之间用=相连，多个参数用&分隔
    // wx.redirectTo()：关闭当前页面内容，重定向到应用内的某个页面，参数与wx.navigateTo()相同
    // wx.reLaunch()：关闭所有页面，重新打开应用内的某个页面，参数与wx.navigateTo()相同
    // wx.navigateBack({delta})：关闭当前页面，返回deta层页面
    wx.navigateTo({
      url: '../detail/detail?id=' + id,
    })
  },

  // 获取指定页数的新闻列表，php版本
  getNewsByPage:function(page){
    var that = this
    wx.request({
      url: common.getNewsList,//url本身是字符串要加""，但是此处是调用函数所以不用加""
      data:{
        page:page
      },
      success:function(res){
        // 获取新闻总数
        let total = res.data.total
        // 追加更多的新闻数据
        let list = that.data.newsList.concat(res.data.list)
        that.setData({
          newsList:list,
          total:total
        })
        // 如果已经显示全部新闻
        if(list.length==total){
          isEnd = true
          that.setData({
            loadMoreText:"已无更多"
          })
        }else{
          currentPage++
        }
      }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // 单机版本
    // let list = common.getNewsList()
    // this.setData({
    //   newsList:list
    // })

    // php版本
    this.getNewsByPage(1)
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