(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-4f0c29ad"],{"447c":function(t,e,i){},"6b02":function(t,e,i){"use strict";i("447c")},b1e0:function(t,e,i){"use strict";i.r(e);var n=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",[i("div",{staticClass:"friend-wrap"},[i("div",{staticClass:"friend-main"},[i("div",{staticClass:"form-wrap",on:{click:function(e){return t.clickLetter()}}},[i("img",{staticClass:"before-img",staticStyle:{width:"100%"},attrs:{src:"https://tuchuang.voooe.cn/images/2024/08/14/friendLetterTop.png"}}),i("div",{staticClass:"envelope",staticStyle:{animation:"hideToShow 2s"}},[i("div",{staticClass:"form-main"},[i("img",{staticStyle:{width:"100%"},attrs:{src:"https://tuchuang.voooe.cn/images/2023/12/23/R-C.jpg"}}),i("div",[i("h3",{staticStyle:{"text-align":"center"}},[t._v("有朋自远方来")]),i("div",[i("div",{staticClass:"myCenter form-friend"},[t._m(0),i("div",{staticClass:"user-content"},[i("div",[i("el-input",{attrs:{maxlength:"30"},model:{value:t.friend.title,callback:function(e){t.$set(t.friend,"title",e)},expression:"friend.title"}})],1),i("div",[i("el-input",{attrs:{maxlength:"120"},model:{value:t.friend.introduction,callback:function(e){t.$set(t.friend,"introduction",e)},expression:"friend.introduction"}})],1),i("div",[i("el-input",{attrs:{maxlength:"200"},model:{value:t.friend.cover,callback:function(e){t.$set(t.friend,"cover",e)},expression:"friend.cover"}})],1),i("div",[i("el-input",{attrs:{maxlength:"200"},model:{value:t.friend.url,callback:function(e){t.$set(t.friend,"url",e)},expression:"friend.url"}})],1)])]),i("div",{staticClass:"myCenter",staticStyle:{"margin-top":"20px"}},[i("proButton",{attrs:{info:"提交",before:t.$constant.before_color_2,after:t.$constant.after_color_2},nativeOn:{click:function(e){return e.stopPropagation(),t.submitFriend()}}})],1)]),i("div",[i("img",{staticStyle:{width:"100%",margin:"5px auto"},attrs:{src:"https://tuchuang.voooe.cn/images/2024/08/14/friendLetterBiLi.png"}})]),i("p",{staticStyle:{"font-size":"12px","text-align":"center",color:"#999"}},[t._v("欢迎交换友链")])])])]),i("img",{staticClass:"after-img",staticStyle:{width:"100%"},attrs:{src:"https://tuchuang.voooe.cn/images/2024/08/14/friendLetterBottom.png"}})]),i("div",{staticStyle:{"font-size":"20px","font-weight":"bold","margin-top":"40px"}},[t._v("🌸本站信息")]),i("div",[i("blockquote",[i("div",[t._v("网站名称: "+t._s(t.$constant.friendWebName))]),i("div",[t._v("网址: "+t._s(t.$constant.friendUrl))]),i("div",[t._v("头像: "+t._s(t.$constant.friendAvatar))]),i("div",[t._v("描述: "+t._s(t.$constant.friendIntroduction))]),i("div",[t._v("网站封面: "+t._s(t.$constant.friendCover))])])]),i("div",{staticStyle:{"font-size":"20px","font-weight":"bold"}},[t._v("🌸申请方式")]),t._m(1),i("hr"),i("h2",{staticStyle:{"margin-top":"60px"}},[t._v("♥️青出于蓝")]),i("card",{attrs:{resourcePathList:t.friendList["♥️青出于蓝"]},on:{clickResourcePath:t.clickFriend}}),i("hr"),i("h2",{staticStyle:{"margin-top":"60px"}},[t._v("🥇友情链接")]),i("card",{attrs:{resourcePathList:t.friendList["🥇友情链接"]},on:{clickResourcePath:t.clickFriend}})],1)])])},s=[function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"user-title"},[i("div",[t._v("名称：")]),i("div",[t._v("简介：")]),i("div",[t._v("封面：")]),i("div",[t._v("网址：")])])},function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",[i("blockquote",[i("div",[t._v("点击上方信封✨✨✨")]),i("div",[t._v("不会添加带有广告营销和没有实质性内容的友链🚫🚫🚫")]),i("div",[t._v("申请之前请将本网站添加为您的友链哦🎟️🎟️🎟️")])])])}],r=(i("d3b7"),i("3ca3"),i("ddb0"),i("498a"),function(){return i.e("chunk-37367f06").then(i.bind(null,"3616"))}),a=function(){return i.e("chunk-94e299d0").then(i.bind(null,"ff66"))},c={components:{card:r,proButton:a},data:function(){return{friendList:{},friend:{title:"",introduction:"",cover:"",url:""}}},computed:{},watch:{},created:function(){this.getFriends()},mounted:function(){},methods:{clickLetter:function(){document.body.clientWidth<700?$(".form-wrap").css({height:"1000px",top:"-200px"}):$(".form-wrap").css({height:"1150px",top:"-200px"})},submitFriend:function(){var t=this;this.$common.isEmpty(this.$store.state.currentUser)?this.$message({message:"请先登录！",type:"error"}):""!==this.friend.title.trim()?""!==this.friend.introduction.trim()?""!==this.friend.cover.trim()?""!==this.friend.url.trim()?this.$http.post(this.$constant.baseURL+"/webInfo/saveFriend",this.friend).then((function(e){$(".form-wrap").css({height:"447px",top:"0"}),t.$message({type:"success",message:"提交成功，待管理员审核！"})})).catch((function(e){t.$message({message:e.message,type:"error"})})):this.$message({message:"你还没写网址呢~",type:"warning"}):this.$message({message:"你还没设置封面呢~",type:"warning"}):this.$message({message:"你还没写简介呢~",type:"warning"}):this.$message({message:"你还没写名称呢~",type:"warning"})},clickFriend:function(t){window.open(t)},getFriends:function(){var t=this;this.$http.get(this.$constant.baseURL+"/webInfo/listFriend").then((function(e){t.$common.isEmpty(e.data)||(t.friendList=e.data)})).catch((function(e){t.$message({message:e.message,type:"error"})}))}}},o=c,d=(i("6b02"),i("2877")),l=Object(d["a"])(o,n,s,!1,null,"2cc7b52e",null);e["default"]=l.exports}}]);