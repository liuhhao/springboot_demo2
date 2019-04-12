<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <!--font-awesome字体图标库-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <title>用户展示</title>
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
    <!--按钮工具栏-->
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <!--按钮组-->
            <div class="btn-group">
                <a href="${pageContext.request.contextPath}/addUser.jsp" class="btn btn-info btn-sm"><span
                        class="glyphicon glyphicon-plus"></span> 添加用户</a>
                <a href="javascript:void(0)" id="delete" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove"></span> 删除选中</a>
            </div>
        </div>
        <div class="col-md-3">
            <form action="${pageContext.request.contextPath}/user/selectAll.do" class="form form-inline input-group">
                <input type="text" class="form-control" placeholder="请输入用户名" name="deptName" value="${requestScope.deptName}" id="name" />
                <span class="input-group-btn"><input type="submit" class="btn btn-success" value="搜索" /></span>
            </form>
        </div>
        <div class="col-md-5"></div>
    </div>
    <div class="row">
        <div class="col-md-12"></div>
    </div>
    <!--信息管理table-->
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
<%--            <form action="${pageContext.request.contextPath}/dept/deleteManyDept.do">--%>
            <table class="table table-bordered table-condensed table-hover">
                <thead>
                <tr class="bg-info text-capitalize">
                    <th class="">
                        <input type="checkbox" name="id"/>
                        <%--<input type="submit" value="删除选中"/>--%>
                    </th>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>密码</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.list}" varStatus="st">
                    <tr>
                        <td style="text-align: center;"><input type="checkbox" name="ids" value="${user.id}"/></td>
                        <td>${st.count}</td>
                        <td>${user.username}</td>
                        <td>${user.pwd}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/user/deleteOneUser.do?id=${user.id}"
                               class="btn btn-xs btn-warning"><span class="glyphicon glyphicon-trash"></span> 删除</a>
                            <a href="${pageContext.request.contextPath}/user/selectOneUser.do?id=${user.id}"
                               class="btn btn-xs btn-info"><span class="glyphicon glyphicon-edit"></span> 修改</a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <%--</form>--%>
        </div>
        <div class="col-md-2"></div>
    </div>
    <!--分页-->
    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4">
            <ul class="pager">
                <c:if test="${requestScope.pageIndex>1}">
                    <li><a href="${pageContext.request.contextPath}/dept/selectAll.do?pageIndex=${requestScope.pageIndex-1}" class="btn btn-default">上一页 </a></li>
                </c:if>
                    <li><a href="#" class="disabled btn btn-default">当前第[${requestScope.pageIndex}]页</a></li>
                <c:if test="${requestScope.pageIndex<requestScope.totalPage}">
                    <li><a href="${pageContext.request.contextPath}/dept/selectAll.do?pageIndex=${requestScope.pageIndex+1}" class="btn btn-default">下一页</a></li>
                </c:if>
            </ul>

        </div>
        <div class="col-md-4"></div>
    </div>
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
<script>
    $("#delete").click(function () {
        var array=document.getElementsByName("ids");
        var arr=new Array();
        for(var i=0;i<array.length;i++){
            if(array[i].checked==true){
                arr[i]=array[i].value;
            }
        }
        window.location.href="${pageContext.request.contextPath}/dept/deleteManyDept.do?ids="+arr
    })
</script>
</html>

