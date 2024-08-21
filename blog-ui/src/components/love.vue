<template>
  <div>
    <!-- 封面 -->
    <div class="bg-wrap my-animation-slide-top">
      <!-- 背景图片 -->
      <el-image class="love-image my-el-image"
                lazy
                :src="love.bgCover"
                fit="cover">
        <div slot="error" class="image-slot"></div>
      </el-image>

      <!-- 对象 -->
      <div class="love-wrap transformCenter">
        <div>
          <el-avatar class="love-avatar" :src="love.manCover"></el-avatar>
          <div class="love-title">
            {{love.manName}}
          </div>
        </div>
        <div>
          <img class="love-img" :src="'data:image/png;base64,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 MCswMDowMKpp2x8AAAAASUVORK5CYII='" alt="心心">
        </div>
        <div>
          <el-avatar class="love-avatar" :src="love.womanCover"></el-avatar>
          <div class="love-title">
            {{love.womanName}}
          </div>
        </div>
      </div>

      <div id="bannerWave1"></div>
      <div id="bannerWave2"></div>
    </div>

    <!-- 内容 -->
    <div class="love-container">
      <div class="myCenter love-content">
        <!-- 时间 -->
        <div>
          <!-- 计时 -->
          <div>
            <div class="love-time-title1">
              这是我们一起走过的
            </div>
            <div class="love-time1">
              第
              <span class="love-time1-item">{{timing.year}}</span>
              年
              <span class="love-time1-item">{{timing.month}}</span>
              月
              <span class="love-time1-item">{{timing.day}}</span>
              日
              <span class="love-time1-item">{{timing.hour}}</span>
              时
              <span class="love-time1-item">{{timing.minute}}</span>
              分
              <span class="love-time1-item">{{timing.second}}</span>
              秒
            </div>
          </div>
          <!-- 倒计时 -->
          <div class="love-time-title2"
               v-if="!$common.isEmpty(love.countdownTitle) || !$common.isEmpty(love.countdownTime)">
            {{love.countdownTitle}}: {{countdownChange}}
          </div>
        </div>
      </div>

      <div style="padding: 0 20px">
        <div class="family-button shadow-box-mini" @click="changeCard(4)">
          <span class="family-button-title">{{card === 4 ? '回到主人家' : '开往表白墙'}}</span>
          <span class="family-button-car">
            <svg viewBox="0 0 1024 1024" width="40" height="40">
                <path
                  d="M399.502 655.103c0 7.902-6.665 14.311-14.88 14.311H72.188c-8.215 0-14.875-6.407-14.875-14.311v-28.634c0-7.913 6.66-14.315 14.875-14.315h312.435c8.217 0 14.88 6.402 14.88 14.315l-0.001 28.634zM968.167 655.103c0 7.902-6.664 14.311-14.882 14.311H640.851c-8.216 0-14.877-6.407-14.877-14.311v-28.634c0-7.913 6.661-14.315 14.877-14.315h312.436c8.218 0 14.882 6.402 14.882 14.315l-0.002 28.634z"
                  fill="#EA0606"></path><path
              d="M968.097 624.008c0 11.563-17.723 20.937-39.583 20.937H97.263c-21.858 0-39.579-9.372-39.579-20.937v-41.876c0-11.562 17.72-20.935 39.579-20.935h831.25c21.86 0 39.583 9.373 39.583 20.935v41.876zM855.003 526.553h-12c0-161.793-151.025-293.421-336.66-293.421-185.633 0-336.656 131.628-336.656 293.421h-12c0-41.334 9.261-81.425 27.527-119.161 17.612-36.384 42.807-69.046 74.886-97.079 65.813-57.509 153.264-89.181 246.243-89.181 92.981 0 180.434 31.672 246.247 89.181 32.079 28.032 57.274 60.693 74.887 97.079 18.264 37.734 27.526 77.826 27.526 119.161z"
              fill="#EA0606"></path><path
              d="M1001.996 588.091c-121.146 13.91-980.875 0-980.875 0s-30.62-203.887 241.944-144.555c171.281-1.178 273.436 0 489.644 0 193.07-59.332 283.186 108.642 249.287 144.555z"
              fill="#EA0606"></path><path
              d="M500.343 214.379h12v330.342h-12z"
              fill="#EA0606"></path><path
              d="M333.217 657.192c0 46.174-38.961 83.602-87.029 83.602-48.056 0-87.021-37.428-87.021-83.602 0-46.172 38.963-83.588 87.021-83.588 48.067 0 87.029 37.417 87.029 83.588z"
              fill="#FFFFFF"></path><path
              d="M246.188 743.794c-49.638 0-90.021-38.85-90.021-86.602 0-47.745 40.383-86.588 90.021-86.588 49.642 0 90.029 38.843 90.029 86.588 0 47.752-40.387 86.602-90.029 86.602z m0-167.19c-46.329 0-84.021 36.151-84.021 80.588 0 44.444 37.692 80.602 84.021 80.602 46.333 0 84.029-36.157 84.029-80.602 0-44.436-37.696-80.588-84.029-80.588z"
              fill="#440A0A"></path><path
              d="M309.872 656.757c0 33.159-27.986 60.035-62.491 60.035-34.51 0-62.487-26.876-62.487-60.035 0-33.16 27.977-60.022 62.487-60.022 34.505 0.001 62.491 26.862 62.491 60.022z"
              fill="#440A0A"></path><path
              d="M271.322 657.558c0 11.747-9.918 21.282-22.151 21.282-12.237 0-22.152-9.535-22.152-21.282 0-11.758 9.916-21.277 22.152-21.277 12.233-0.002 22.151 9.519 22.151 21.277z"
              fill="#FFFFFF"></path><path
              d="M875.521 642.811c0 46.175-38.963 83.603-87.027 83.603-48.061 0-87.021-37.428-87.021-83.603 0-46.173 38.962-83.587 87.021-83.587 48.066 0 87.027 37.414 87.027 83.587z"
              fill="#FFFFFF"></path><path
              d="M788.494 729.413c-49.638 0-90.021-38.85-90.021-86.603 0-47.744 40.384-86.587 90.021-86.587 49.642 0 90.027 38.843 90.027 86.587 0 47.753-40.385 86.603-90.027 86.603z m0-167.189c-46.33 0-84.021 36.151-84.021 80.587 0 44.444 37.691 80.603 84.021 80.603 46.333 0 84.027-36.158 84.027-80.603 0-44.436-37.694-80.587-84.027-80.587z"
              fill="#440A0A"></path><path
              d="M852.174 642.374c0 33.159-27.979 60.037-62.486 60.037-34.512 0-62.487-26.878-62.487-60.037 0-33.161 27.977-60.023 62.487-60.023 34.506-0.001 62.486 26.862 62.486 60.023z"
              fill="#440A0A"></path><path
              d="M813.628 643.173c0 11.75-9.919 21.278-22.153 21.278-12.233 0-22.151-9.528-22.151-21.278 0-11.759 9.919-21.275 22.151-21.275 12.235-0.002 22.153 9.516 22.153 21.275z"
              fill="#FFFFFF"></path><path
              d="M518.135 469.838h56.847v12.556h-56.847z"
              fill="#FFFFFF"></path><path
              d="M522.818 468.694c0 7.902-0.648 14.309-1.445 14.309h-30.37c-0.799 0-1.446-6.406-1.446-14.309V440.06c0-7.912 0.647-14.315 1.446-14.315h30.37c0.797 0 1.445 6.403 1.445 14.315v28.634z"
              fill="#EA0606">
                </path>
            </svg>
          </span>
        </div>
      </div>

      <div style="padding: 0 20px">
        <!-- 卡片 -->
        <div class="card-wrap" v-show="card !== 4">
          <div class="card-content shadow-box-mini" @click="changeCard(1)">
            <div>
              <el-avatar :size="100"
                         :src="'https://tuchuang.voooe.cn/images/2024/08/14/loveMessage.jpg'">
              </el-avatar>
            </div>
            <div class="card-right">
              <div class="card-title">
                点点滴滴
              </div>
              <div class="card-desc">
                ☀️今朝有酒今朝醉
              </div>
            </div>
          </div>

          <div class="card-content shadow-box-mini" @click="changeCard(2)">
            <div>
              <el-avatar :size="100"
                         :src="'https://tuchuang.voooe.cn/images/2024/08/14/loveWeiYan.jpg'">
              </el-avatar>
            </div>
            <div class="card-right">
              <div class="card-title">
                时光相册
              </div>
              <div class="card-desc">
                📸记录美好瞬间
              </div>
            </div>
          </div>

          <div class="card-content shadow-box-mini" @click="changeCard(3)">
            <div>
              <el-avatar :size="100"
                         :src="'https://tuchuang.voooe.cn/images/2024/08/14/lovePhoto.jpg'">
              </el-avatar>
            </div>
            <div class="card-right">
              <div class="card-title">
                祝福板
              </div>
              <div class="card-desc">
                📋写下对我们的祝福
              </div>
            </div>
          </div>
        </div>

        <div class="card-container">
          <div id="treeHole" v-show="card === 1 && !$common.isEmpty(treeHoleList)">
            <treeHole :treeHoleList="treeHoleList"
                      :avatar="$store.state.webInfo.avatar"
                      @launch="launch"
                      @deleteTreeHole="deleteTreeHole">
            </treeHole>
          </div>
          <div v-show="card === 2 && !$common.isEmpty(photoTitleList)">
            <!-- 标签 -->
            <div class="photo-title-warp" v-if="!$common.isEmpty(photoTitleList)">
              <div v-for="(item, index) in photoTitleList" :key="index"
                   :class="{isActive: photoPagination.classify === item.classify}"
                   @click="changePhotoTitle(item.classify)">
                <proTag :info="item.classify+' '+item.count"
                        :color="$constant.before_color_list[Math.floor(Math.random() * 6)]"
                        style="margin: 12px">
                </proTag>
              </div>
            </div>

            <div class="photo-title">
              {{photoPagination.classify}}
            </div>

            <photo :resourcePathList="photoList"></photo>
            <div class="pagination-wrap">
              <div @click="pagePhotos()" class="pagination" v-if="photoPagination.total !== photoList.length">
                下一页
              </div>
              <div v-else style="user-select: none">
                ~~到底啦~~
              </div>
            </div>
          </div>
          <div v-show="card === 3" class="comment-content">
            <comment :source="$constant.userId" :type="'love'" :userId="$constant.userId"></comment>
          </div>
        </div>

        <div v-show="card === 4">
          <div class="family-container" v-show="!$common.isEmpty(randomFamily)">
            <div v-for="(item, index) in randomFamily" :key="index"
                 @click="changeFamily(item)">
              <div class="family-wrap"
                   :style="{ background: 'url(' + item.bgCover + ') center center / cover no-repeat' }">
                <div>
                  <el-avatar class="family-avatar" :src="item.manCover"></el-avatar>
                  <div class="family-title">
                    {{item.manName}}
                  </div>
                </div>
                <div>
                  <img class="family-img" :src="'data:image/png;base64,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 MCswMDowMKpp2x8AAAAASUVORK5CYII='" alt="心心">
                </div>
                <div>
                  <el-avatar class="family-avatar" :src="item.womanCover"></el-avatar>
                  <div class="family-title">
                    {{item.womanName}}
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="family-bottom-wrap">
            <div v-show="!$common.isEmpty(randomFamily) && randomFamily.length > 10" class="family-bottom"
                 style="background-color: var(--maxLightRed)" @click="getRandomFamily()">
              <span style="line-height: 50px">
                换一换
              </span>
              <span style="vertical-align:middle">
                <svg viewBox="0 0 1024 1024" width="30" height="30"><path
                  d="M952 511.5L567.4 183v164.3s-251.3 30.3-369.1 131.2C76.4 582.9 73 840 73 840l20.4-2s72.9-164 258.5-162.3c99.9 0.9 171.3 0.8 215.6 0.6V840L952 511.5z"
                  fill="#FF9D3A"></path>
                </svg>
              </span>
            </div>
            <div class="family-bottom" style="background-color: var(--lightGreen)" @click="addFamily()">
              <span style="line-height: 50px">
                申请入住
              </span>
              <span style="vertical-align:middle">
                <svg viewBox="0 0 1024 1024" width="30" height="30"><path
                  d="M731.0848 143.7696c-125.0816-54.528-270.7456 2.6624-325.2736 127.7952l-3.7376 8.6016-8.6016-3.7376c-125.0816-54.5792-270.6944 2.6112-325.2224 127.744-54.528 125.0816 2.6624 270.7456 127.7952 325.2736l368.0256 160.4096c51.712 22.528 111.872-1.1264 134.4-52.7872l0.0512-0.1024c0-0.0512 0.0512-0.1024 0.0512-0.1536l160.3072-367.7696c54.528-125.1328-2.6624-270.7456-127.7952-325.2736z"
                  fill="#F85F69"></path><path
                  d="M586.9568 433.8688c72.2432-31.488 156.3136 1.536 187.8016 73.7792l2.1504 4.9664 4.9664-2.1504c72.2432-31.488 156.3136 1.536 187.8016 73.7792 31.488 72.2432-1.536 156.3136-73.7792 187.8016l-212.48 92.6208c-29.8496 13.0048-64.5632-0.6144-77.568-30.464v-0.0512c0-0.0512-0.0512-0.0512-0.0512-0.1024l-92.5696-212.3264c-31.488-72.2944 1.536-156.3648 73.728-187.8528z"
                  fill="#F85F69"></path><path
                  d="M781.8752 510.4128l-4.9664 2.1504-2.1504-4.9664c-31.488-72.2432-115.5584-105.2672-187.8016-73.7792s-105.2672 115.5584-73.7792 187.8016l92.5696 212.3264c0 0.0512 0.0512 0.0512 0.0512 0.1024v0.0512c12.3904 28.3648 44.3904 42.0864 73.1648 32.1536a101.4784 101.4784 0 0 0 19.4048-29.2352l0.0512-0.1024c0-0.0512 0.0512-0.1024 0.0512-0.1536l147.4048-338.0736c-21.248-1.024-43.1104 2.6624-64 11.7248z"
                  fill="#F33B3D"></path>
                </svg>
              </span>
            </div>
          </div>
        </div>
      </div>

      <el-dialog title="入住表白墙"
                 :visible.sync="loveDialogVisible"
                 width="40%"
                 :close-on-click-modal="false"
                 :append-to-body="true"
                 destroy-on-close
                 center>
        <div>
          <div class="form-main">
            <img :src="'https://tuchuang.voooe.cn/images/2023/12/23/R-C.jpg'" style="width: 100%"/>
            <div>
              <div>
                <div class="myCenter form-friend">
                  <div class="user-content">
                    <div>
                      <div class="form-title">
                        背景封面&nbsp;
                      </div>
                      <div style=" display: flex">
                        <el-input maxlength="120" v-model="userLove.bgCover"></el-input>
                        <div style="margin: 3px 0 0 10px">
                          <proButton :info="'上传背景'"
                                     @click.native="openPicture('bgCover')"
                                     :before="$constant.before_color_1"
                                     :after="$constant.after_color_1">
                          </proButton>
                        </div>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        男生头像&nbsp;
                      </div>
                      <div style=" display: flex">
                        <el-input maxlength="120" v-model="userLove.manCover"></el-input>
                        <div style="margin: 3px 0 0 10px">
                          <proButton :info="'上传头像'"
                                     @click.native="openPicture('manCover')"
                                     :before="$constant.before_color_1"
                                     :after="$constant.after_color_1">
                          </proButton>
                        </div>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        女生头像&nbsp;
                      </div>
                      <div style=" display: flex">
                        <el-input maxlength="120" v-model="userLove.womanCover"></el-input>
                        <div style="margin: 3px 0 0 10px">
                          <proButton :info="'上传头像'"
                                     @click.native="openPicture('womanCover')"
                                     :before="$constant.before_color_1"
                                     :after="$constant.after_color_1">
                          </proButton>
                        </div>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        男生昵称&nbsp;
                      </div>
                      <div>
                        <el-input maxlength="10" v-model="userLove.manName"></el-input>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        女生昵称&nbsp;
                      </div>
                      <div>
                        <el-input maxlength="10" v-model="userLove.womanName"></el-input>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        计时时间&nbsp;
                      </div>
                      <div>
                        <el-date-picker
                          v-model="userLove.timing"
                          value-format="yyyy-MM-dd HH:mm:ss"
                          type="datetime"
                          align="center"
                          placeholder="选择计时时间">
                        </el-date-picker>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        倒计时标题
                      </div>
                      <div>
                        <el-input maxlength="20" v-model="userLove.countdownTitle"></el-input>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        倒计时时间
                      </div>
                      <div>
                        <el-date-picker
                          v-model="userLove.countdownTime"
                          value-format="yyyy-MM-dd HH:mm:ss"
                          type="datetime"
                          align="center"
                          placeholder="选择倒计时时间">
                        </el-date-picker>
                      </div>
                    </div>
                    <div>
                      <div class="form-title">
                        告白信&nbsp;&nbsp;
                      </div>
                      <div>
                        <el-input type="textarea"
                                  show-word-limit
                                  maxlength="1000"
                                  v-model="userLove.familyInfo"></el-input>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="myCenter" style="margin-top: 20px">
                  <proButton :info="'提交'"
                             @click.native.stop="submitLove()"
                             :before="$constant.before_color_2"
                             :after="$constant.after_color_2">
                  </proButton>
                </div>
              </div>
              <div>
                <img :src="'https://tuchuang.voooe.cn/images/2024/08/14/friendLetterBiLi.png'" style="width: 100%;margin: 5px auto"/>
              </div>
              <p style="font-size: 12px;text-align: center;color: #999">欢迎入住表白墙</p>
            </div>
          </div>
        </div>
      </el-dialog>

      <el-dialog title="图片"
                 :visible.sync="addPictureDialog"
                 width="25%"
                 :append-to-body="true"
                 :close-on-click-modal="false"
                 destroy-on-close
                 center>
        <div>
          <uploadPicture :prefix="'love/' + pictureType" @addPicture="addPicture" :maxSize="2"
                         :maxNumber="1"></uploadPicture>
        </div>
      </el-dialog>

      <div>
        <!-- 页脚 -->
        <myFooter></myFooter>
      </div>
    </div>
  </div>
</template>

<script>

  const treeHole = () => import( "./common/treeHole");
  const comment = () => import( "./comment/comment");
  const myFooter = () => import( "./common/myFooter");
  const photo = () => import( "./common/photo");
  const proTag = () => import( "./common/proTag");
  const proButton = () => import( "./common/proButton");
  const uploadPicture = () => import( "./common/uploadPicture");

  export default {
    components: {
      comment,
      photo,
      treeHole,
      myFooter,
      proTag,
      proButton,
      uploadPicture
    },

    data() {
      return {
        userLove: {
          bgCover: "",
          manCover: "",
          womanCover: "",
          manName: "",
          womanName: "",
          countdownTitle: "",
          countdownTime: "",
          timing: "",
          familyInfo: ""
        },
        loveDialogVisible: false,
        addPictureDialog: false,
        pictureType: "",
        adminLove: {},
        love: {
          bgCover: "",
          manCover: "",
          womanCover: "",
          manName: "",
          womanName: "",
          countdownTitle: "",
          countdownTime: "",
          timing: ""
        },
        weiYanPagination: {
          current: 1,
          size: 10,
          total: 0,
          userId: this.$constant.userId
        },
        photoPagination: {
          current: 1,
          size: 10,
          total: 0,
          resourceType: "lovePhoto",
          classify: ""
        },
        treeHoleList: [],
        photoTitleList: [],
        photoList: [],
        randomFamily: [],
        card: null,
        countdownChange: "",
        timing: {
          year: 0,
          month: 0,
          day: 0,
          hour: 0,
          minute: 0,
          second: 0
        }
      }
    },

    computed: {},

    watch: {},

    created() {
      this.getAdminFamily();
      this.card = 2;
      this.getPhotoTitles();
    },

    mounted() {

    },

    methods: {
      openPicture(type) {
        this.pictureType = type;
        this.addPictureDialog = true;
      },
      addPicture(res) {
        if (this.pictureType === "bgCover") {
          this.userLove.bgCover = res;
        } else if (this.pictureType === "manCover") {
          this.userLove.manCover = res;
        } else if (this.pictureType === "womanCover") {
          this.userLove.womanCover = res;
        }

        this.pictureType = "";
        this.addPictureDialog = false;
      },
      submitLove() {
        if (this.userLove.bgCover.trim() === "") {
          this.$message({
            message: "你还没设置背景封面呢~",
            type: "warning"
          });
          return;
        }

        if (this.userLove.manCover.trim() === "") {
          this.$message({
            message: "你还没设置男生头像呢~",
            type: "warning"
          });
          return;
        }

        if (this.userLove.womanCover.trim() === "") {
          this.$message({
            message: "你还没设置女生头像呢~",
            type: "warning"
          });
          return;
        }

        if (this.userLove.manName.trim() === "") {
          this.$message({
            message: "你还没写男生昵称呢~",
            type: "warning"
          });
          return;
        }

        if (this.userLove.womanName.trim() === "") {
          this.$message({
            message: "你还没写女生昵称呢~",
            type: "warning"
          });
          return;
        }

        if (this.userLove.timing.trim() === "") {
          this.$message({
            message: "你还没设置计时时间呢~",
            type: "warning"
          });
          return;
        }

        this.$http.post(this.$constant.baseURL + "/family/saveFamily", this.userLove)
          .then((res) => {
            this.$message({
              type: 'success',
              message: '提交成功，待管理员审核！'
            });
            this.userLove = {};
            this.loveDialogVisible = false;
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      addFamily() {
        if (this.$common.isEmpty(this.$store.state.currentUser)) {
          this.$message({
            message: "请先登录！",
            type: "error"
          });
          return;
        }

        this.$http.get(this.$constant.baseURL + "/family/getFamily")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.userLove = res.data;
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });

        this.loveDialogVisible = true;
      },
      changeFamily(family) {
        this.love = family;
      },
      getPhotoTitles() {
        this.$http.get(this.$constant.baseURL + "/webInfo/listAdminLovePhoto")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.photoTitleList = res.data;
              this.photoPagination = {
                current: 1,
                size: 10,
                total: 0,
                resourceType: "lovePhoto",
                classify: this.photoTitleList[0].classify
              };
              this.changePhoto();
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      getAdminFamily() {
        this.$http.get(this.$constant.baseURL + "/family/getAdminFamily")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.love = res.data;
              this.adminLove = res.data;
              this.getLove();
              this.countdown();
              setInterval(() => {
                this.getLove();
                this.countdown();
              }, 1000);
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      getRandomFamily() {
        this.$http.get(this.$constant.baseURL + "/family/listRandomFamily")
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.randomFamily = res.data;
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      changePhotoTitle(classify) {
        if (classify !== this.photoPagination.classify) {
          this.photoPagination = {
            current: 1,
            size: 10,
            total: 0,
            resourceType: "lovePhoto",
            classify: classify
          };
          this.photoList = [];
          this.changePhoto();
        }
      },
      pagePhotos() {
        this.photoPagination.current = this.photoPagination.current + 1;
        this.changePhoto();
      },
      changePhoto() {
        this.$http.post(this.$constant.baseURL + "/webInfo/listResourcePath", this.photoPagination)
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              this.photoList = this.photoList.concat(res.data.records);
              this.photoPagination.total = res.data.total;
            }
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      changeCard(card) {
        if (card !== 4 || this.card !== card) {
          this.card = card;
        } else {
          card = 1;
          this.card = 1;
          this.love = this.adminLove;
        }

        if (card === 1) {
          if (this.$common.isEmpty(this.treeHoleList)) {
            this.getWeiYan();
          }
        } else if (card === 2) {
          if (this.$common.isEmpty(this.photoTitleList)) {
            this.getPhotoTitles();
          }
        } else if (card === 4) {
          if (this.$common.isEmpty(this.randomFamily)) {
            this.getRandomFamily();
          }
        }
      },
      getLove() {
        if (this.$common.isEmpty(this.love.timing)) {
          return;
        }
        let diff = this.$common.timeDiff(this.love.timing);
        this.timing.year = diff.diffYear;
        this.timing.month = diff.diffMonth;
        this.timing.day = diff.diffDay;
        this.timing.hour = diff.diffHour;
        this.timing.minute = diff.diffMinute;
        this.timing.second = diff.diffSecond;
      },
      countdown() {
        if (this.$common.isEmpty(this.love.countdownTime)) {
          return;
        }
        let countdown = this.$common.countdown(this.love.countdownTime);
        this.countdownChange = countdown.d + "天" + countdown.h + "时" + countdown.m + "分" + countdown.s + "秒";
      },
      launch() {
        if (this.weiYanPagination.total !== this.treeHoleList.length) {
          this.weiYanPagination.current = this.weiYanPagination.current + 1;
          this.getWeiYan();
        } else {
          this.$message({
            message: "~~到底啦~~",
            type: "warning"
          });
        }
      },
      getWeiYan() {
        this.$http.post(this.$constant.baseURL + "/weiYan/listWeiYan", this.weiYanPagination)
          .then((res) => {
            if (!this.$common.isEmpty(res.data)) {
              res.data.records.forEach(c => {
                c.content = c.content.replace(/\n{2,}/g, '<div style="height: 12px"></div>');
                c.content = c.content.replace(/\n/g, '<br/>');
                c.content = this.$common.faceReg(c.content);
                c.content = this.$common.pictureReg(c.content);
              });
              this.treeHoleList = this.treeHoleList.concat(res.data.records);
              this.weiYanPagination.total = res.data.total;
            }
            this.$nextTick(() => {
              this.$common.imgShow("#treeHole .pictureReg");
            });
          })
          .catch((error) => {
            this.$message({
              message: error.message,
              type: "error"
            });
          });
      },
      deleteTreeHole(id) {
        if (this.$common.isEmpty(this.$store.state.currentUser)) {
          this.$message({
            message: "请先登录！",
            type: "error"
          });
          return;
        }

        this.$confirm('确认删除？', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'success',
          center: true
        }).then(() => {
          this.$http.get(this.$constant.baseURL + "/weiYan/deleteWeiYan", {id: id})
            .then((res) => {
              this.$message({
                type: 'success',
                message: '删除成功!'
              });
              this.weiYanPagination.current = 1;
              this.getWeiYan();
            })
            .catch((error) => {
              this.$message({
                message: error.message,
                type: "error"
              });
            });
        }).catch(() => {
          this.$message({
            type: 'success',
            message: '已取消删除!'
          });
        });
      }
    }
  }
</script>

<style scoped>

  .love-container {
    background-image: linear-gradient(to right, rgba(37, 82, 110, 0.1) 1px, var(--background) 1px), linear-gradient(to bottom, rgba(37, 82, 110, 0.1) 1px, var(--background) 1px);
    background-size: 3rem 3rem;
    /*background: var(--background);*/
  }

  .bg-wrap {
    height: 55vh;
    position: relative;
    overflow: hidden;
  }

  .love-image::before {
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: var(--miniMask);
  }

  .love-wrap {
    width: 90%;
    background: rgba(255, 255, 255, 0.1);
    max-width: 950px;
    border-radius: 3em;
    display: flex;
    align-items: center;
    justify-content: space-around;
    padding: 50px 70px 30px 70px;
  }

  .love-avatar {
    border: rgba(255, 255, 255, 0.2) 4px solid;
    width: 180px;
    height: 180px;
  }

  .love-title {
    margin-top: 15px;
    text-align: center;
    font-size: 25px;
    font-weight: 700;
    color: var(--white);
  }

  .love-img {
    animation: imgScale 2s linear infinite;
    width: 120px;
    height: 120px;
  }

  #bannerWave1 {
    height: 84px;
    background: var(--bannerWave1);
    position: absolute;
    width: 200%;
    bottom: 0;
    z-index: 10;
    animation: gradientBG 120s linear infinite;
  }

  #bannerWave2 {
    height: 100px;
    background: var(--bannerWave2);
    position: absolute;
    width: 400%;
    bottom: 0;
    z-index: 5;
    animation: gradientBG 120s linear infinite;
  }

  .love-content {
    max-width: 1200px;
    overflow: hidden;
    margin: 20px auto 0;
    user-select: none;
  }

  .love-time-title1 {
    font-size: 2rem;
    font-weight: 600;
    letter-spacing: 0.2rem;
    line-height: 4rem;
    text-align: center;
    background-image: linear-gradient(270deg, #ff4500, #ffa500, #ffd700, #90ee90, #00ffff, #1e90ff, #9370db, #ff69b4, #ff4500);
    -webkit-background-clip: text;
    animation: jianBian 60s linear infinite;
    width: 3000px;
    color: rgba(0, 0, 0, 0);
  }

  .love-time-title2 {
    text-align: center;
    font-size: 1.5rem;
    line-height: 4rem;
    font-weight: 600;
    letter-spacing: 2px;
  }

  .love-time1 {
    text-align: center;
    font-size: 2rem;
    font-weight: 700;
  }

  .love-time1-item {
    font-size: 4rem;
    font-weight: 700;
  }

  .card-wrap {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: center;
    padding: 20px 0;
  }

  .card-content {
    display: flex;
    padding: 25px;
    margin: 25px auto;
    border-radius: 20px;
    max-width: 780px;
    cursor: pointer;
    transition: all 0.3s;
    background: var(--background);
  }

  .card-content:hover,
  .family-button:hover,
  .family-wrap:hover {
    transform: translateY(-6px);
  }

  .card-right {
    margin-left: 20px;
  }

  .card-title {
    font-size: 1.6rem;
    letter-spacing: 0.2rem;
    line-height: 3.5rem;
    font-weight: 700;
  }

  .card-desc {
    font-size: 1.1rem;
    letter-spacing: 0.2rem;
    color: #777777;
  }

  .card-container {
    max-width: 1500px;
    margin: 20px auto 40px;
  }

  .pagination-wrap {
    display: flex;
    justify-content: center;
    margin-top: 40px;
  }

  .pagination {
    padding: 13px 15px;
    border: 1px solid var(--lightGray);
    border-radius: 3rem;
    color: var(--greyFont);
    width: 100px;
    user-select: none;
    cursor: pointer;
    text-align: center;
  }

  .pagination:hover {
    border: 1px solid var(--themeBackground);
    color: var(--themeBackground);
    box-shadow: 0 0 5px var(--themeBackground);
  }

  .comment-content {
    max-width: 1000px;
    margin: 0 auto;
  }

  .photo-title {
    text-align: center;
    font-size: 30px;
    font-weight: 700;
    line-height: 80px;
    letter-spacing: 2px;
  }

  .photo-title-warp {
    max-width: 1150px;
    margin: 50px auto;
    padding: 20px;
    border-radius: 10px;
    display: flex;
    flex-wrap: wrap;
  }

  .isActive {
    animation: scale 2.5s ease-in-out infinite;
  }

  .family-button {
    position: relative;
    overflow: hidden;
    height: 150px;
    color: var(--white);
    margin: 50px auto 15px;
    border-radius: 20px;
    max-width: 350px;
    cursor: pointer;
    transition: all 0.3s;
    background: var(--love) center center / cover no-repeat;
    user-select: none;
  }

  .family-button::before {
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: var(--miniMask);
  }

  .family-button-title {
    position: absolute;
    line-height: 150px;
    margin-left: 20px;
    font-size: 25px;
    font-weight: 700;
    color: var(--white);
  }

  .family-button-car {
    position: absolute;
    margin-left: 220px;
    margin-top: 55px;
    animation: passing 4s linear infinite;
  }

  .family-container {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin-bottom: 40px;
  }

  .family-wrap {
    cursor: pointer;
    width: 350px;
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: space-around;
    padding: 15px 25px 5px 25px;
    margin: 20px;
    transition: all 0.3s;
    user-select: none;
  }

  .family-avatar {
    border: rgba(255, 255, 255, 0.2) 4px solid;
    width: 90px;
    height: 90px;
  }

  .family-title {
    margin-top: 15px;
    text-align: center;
    font-size: 20px;
    font-weight: 700;
    color: var(--white);
  }

  .family-img {
    animation: imgScale 2s linear infinite;
    width: 60px;
    height: 60px;
  }

  .family-bottom-wrap {
    display: flex;
    justify-content: space-around;
    margin: 0 0 40px;
  }

  .family-bottom {
    color: var(--white);
    border-radius: 3rem;
    width: 150px;
    text-align: center;
    height: 50px;
    cursor: pointer;
    user-select: none;
  }

  .form-main {
    animation: hideToShow 2s;
    border-radius: 12px;
    overflow: hidden;
  }

  .user-content > div {
    height: 65px;
    display: flex;
    align-items: center;
  }

  .user-content >>> .el-input__inner {
    border: none;
    height: 40px;
    width: 250px;
    background: var(--whiteMask);
  }

  .user-content >>> .el-textarea__inner {
    border: none;
    width: 250px;
    background: var(--whiteMask);
  }

  .user-content >>> .el-input__count {
    background: var(--transparent);
    user-select: none;
  }

  .form-friend {
    background-color: #eeeeee;
    padding: 20px 0;
  }

  .form-title {
    margin: 10px;
    text-align: center;
  }

  @media screen and (max-width: 1200px) {
    .user-content > div {
      display: unset;
      align-items: unset;
    }
  }

  @media screen and (max-width: 800px) {
    .love-wrap {
      border-radius: 1.5em;
      padding: 40px 30px 10px 30px;
    }

    .love-avatar {
      width: 120px;
      height: 120px;
    }

    .love-img {
      width: 100px;
      height: 100px;
    }

    .love-time1 {
      font-size: 1.4rem;
    }

    .love-time1-item {
      font-size: 3rem;
    }
  }

  @media screen and (max-width: 600px) {
    .love-wrap {
      padding: 30px 20px 10px 20px;
    }

    .love-avatar {
      width: 100px;
      height: 100px;
    }

    .love-img {
      width: 80px;
      height: 80px;
    }

    .love-time1 {
      font-size: 1rem;
    }

    .love-time1-item {
      font-size: 1.8rem;
    }

    .love-time-title2 {
      font-size: 1.2rem;
    }

    .user-content >>> .el-textarea__inner {
      width: 100%;
    }

    .user-content >>> .el-input__inner {
      width: 190px;
    }

    .card-container .tree-hole-container {
      padding: 0;
    }
  }

  @media screen and (max-width: 1150px) {
    .card-wrap {
      display: unset;
      justify-content: unset;
    }

    .photo-title-warp {
      max-width: 780px;
    }

    .family-button {
      max-width: 780px;
    }
  }

</style>
