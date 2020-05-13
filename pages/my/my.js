// pages/my/my.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    number: 0,
    nickName: "未登录",
    src: "/images/index1.png",
    newsList: []
    // newsList: [
    //   {
    //     id: "356412",
    //     title: "特写：2019，天安门城楼前的中国",
    //     poster: "http://image1.chinanews.com.cn/cnsupload/big/2019/10-01/4-426/a7e426b0dd6c43d2bc710fafe810a0d5.jpg",
    //     add_date: "2019-10-01"
    //   }
    // ]
  },
  // 登录，获取用户信息
  getMyInfo:function(e){
    console.log(e.detail.userInfo)
    let info = e.detail.userInfo
    this.setData({
      src:info.avatarUrl,
      nickName:info.nickName,
      isLogin:true
    })
    // 获取新闻收藏列表
    this.getMyFavorites()
  },

  // 更新收藏
  getMyFavorites:function(){
    // getStorageInfoSync是同步获取当前storage的相关信息，获取的是所有信息；getStorageSync从本地缓存中同步获取指定 key 对应的内容
    let info = wx.getStorageInfoSync()//读取本地缓存信息
    let keys =info.keys//获取全部key信息
    let num = keys.length//获取收藏新闻数量
    let myList = [];
    for(var i = 0; i < num; i++){
      let obj = wx.getStorageSync(keys[i])//获取到key相应的新闻
      myList.push(obj)//放到myList里面
    }
    // 更新收藏列表
    this.setData({
      newsList:myList,
      number:num
    })
  },

  goToDetail:function(e){
    // 获取携带data-id的数据
    let id = e.currentTarget.dataset.id
    // 携带新闻id进行页面跳转
    wx.navigateTo({
      url: '../detail/detail?id=' + id,
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // wx.clearStorage()//清空缓存
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示，每次显示都操作
   */
  onShow: function () {
    // 若已经是登录状态，则每次显示都刷新收藏页面
    if(this.data.isLogin){
      this.getMyFavorites()
    }    
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