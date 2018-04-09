<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link href="https://cdn.bootcss.com/element-ui/2.3.2/theme-chalk/index.css" rel="stylesheet">

</head>
<style>
    a{ text-decoration:none; }
</style>
<body>
<div id="app">
    <el-container>
        <el-header>
            <el-row>
                <el-col :span="24">
                    <el-menu default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect" >
                        <el-menu-item index="1"><a href="login.jsp">首页</a></el-menu-item>
                        <el-menu-item index="2">学生管理</el-menu-item>
                        <el-menu-item index="3">成绩查询</el-menu-item>
                        <el-menu-item index="4">系统设置</el-menu-item>
                        <el-submenu index="5"><template slot="title">用户</template>
                            <el-menu-item index="5-1">信息设置</el-menu-item>
                            <el-menu-item index="5-2">安全退出</el-menu-item>
                        </el-submenu>
                    </el-menu>
                </el-col>
            </el-row>
        </el-header>
        <el-main>Main</el-main>
        <el-footer>Footer</el-footer>
    </el-container>

</div>
</body>
<script src="/resources/script/vue.js"></script>
<script src="/resources/script/index.js"></script>
<content tag="javascript">
<script>
    var app = new Vue({
        el: '#app',
        data: {

        },
        method:{
            handleSelect:function(key, keyPath) {
                console.log(key, keyPath);
            }
        }
    })
</script>
</content>
</html>
