<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jqthumb.min.js"></script>
    <script type="text/javascript">
        function DrawImage(hotimg) {
            $(hotimg).jqthumb({
                width: '100%',//宽度
                height: '200px',//高度
                position: { y: '50%', x: '50%' },//从图片的中间开始产生缩略图
                zoom: '1',//缩放比例
                method: 'auto'//提交方法，用于不同的浏览器环境，默认为‘auto’
            });
        }
    </script>
    <title>DashBoard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

    <style>
        .line-limit-length {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>

</head>

<body>
    <div class="container" style="float:left;margin-top:25px;width:90%">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/networking.jpg" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">网络与分布式计算</h3>
                        <p class="line-limit-length">20192021821-专业必修-计算机学院-胡继承</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/xijinping.jpg" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">习近平新时代中国特色社会主义思想概论</h3>
                        <p class="line-limit-length">20192058475-公共必修-公共政治教学-周尤正</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/bridge.jpg" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">世界桥梁建筑艺术赏析</h3>
                        <p class="line-limit-length">20192020944-通识教育选修-土木建筑工程学院-万臻</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/webSoft.png" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">Web程序设计</h3>
                        <p class="line-limit-length">20192021920-专业选修-计算机学院-韩波</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/softtest.png" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">软件测试技术实验</h3>
                        <p class="line-limit-length">20192021923-专业选修-计算机学院-玄跻峰</p>

                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/networking.jpg" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">网络与分布式计算实验</h3>
                        <p class="line-limit-length">20192021924-专业必修-计算机学院-胡继承</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="images/InfoSafety.png" onload="DrawImage(this)">
                    <div class="caption">
                        <h3 class="line-limit-length">信息安全</h3>
                        <p class="line-limit-length">20192021837-专业必修-计算机学院-余纯武</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>

</html>