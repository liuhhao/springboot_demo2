<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"
            charset="utf-8"></script>
    <title>医院分诊管理系统首页</title>
    <style type="text/css">
        th {
            text-align: center;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <%--    <div class="row">
            <iframe src="${pageContext.request.contextPath}/iframe/nav.jsp" width="100%" frameborder="0"></iframe>
        </div>--%>

    <div class="row">
        <div class="col-md-12"></div>
    </div>
    <!--信息管理table-->
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="text-align: center;">
            <form class="form-inline" action="${pageContext.request.contextPath}/user/addUser.do" method="get">
                <table class="table  table-bordered" style="width:100%;">
                    <tr class="bg-info">
                        <td style="text-align: center;" colspan="2"><span style="font-size: 20px;font-weight: bold;">用户添加</span>
                        </td>
                    </tr>
                    <tr class="active">
                        <td style="width: 180px; vertical-align: middle">用户名称</td>
                        <td><input type="text" style="width: 100%;" placeholder="请输入用户名称" class="form-control"
                                   name="username"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 180px; vertical-align: middle">用户密码</td>
                        <td><input type="text" style="width: 100%;" placeholder="请输入用户密码" class="form-control"
                                   name="pwd"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" style="width: 200px;" class="btn btn-success" value="添加">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
    <!--底部-->
    <div class="row">
        <div class="com-md-12">
            <!--底部-->
            <footer class="modal-footer navbar-fixed-bottom">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8" style="text-align: left;">
                        &trade;百知教育 网址:<a href="http://www.baizhiedu.com">http://www.baizhiedu.com</a>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </footer>
        </div>
    </div>
</div>
</body>
</html>

