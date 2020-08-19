<%@ page  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">
    <%@ include file="/WEB-INF/jsp/common/include_common_header_all.jsp"%>
    <link rel="shortcut icon" href="${ctx}/static/assets/images/favicon_1.ico">
    <title>后台权限框架</title>
</head>


<body class="fixed-left">

<!-- Begin page -->
<div id="wrapper">

    <!-- Top Bar Start -->
    <%@ include file="/WEB-INF/jsp/common/navbar.jsp"%>
    <!-- Top Bar End -->


    <!-- ========== Left Sidebar Start ========== -->

    <%@ include file="/WEB-INF/jsp/common/sidebar.jsp"%>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <%@ include file="/WEB-INF/jsp/common/main-container.jsp"%>
    <!-- ============================================================== -->
    <!-- End Right content here -->
    <!-- ============================================================== -->

    <%--<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>--%>
    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <h4 class="text-center">Chat</h4>
        <div class="contact-list nicescroll">
            <ul class="list-group contacts-list">
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-1.jpg" alt="">
                        </div>
                        <span class="name">Chadengle</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-2.jpg" alt="">
                        </div>
                        <span class="name">Tomaslau</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-3.jpg" alt="">
                        </div>
                        <span class="name">Stillnotdavid</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-4.jpg" alt="">
                        </div>
                        <span class="name">Kurafire</span>
                        <i class="fa fa-circle online"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-5.jpg" alt="">
                        </div>
                        <span class="name">Shahedk</span>
                        <i class="fa fa-circle away"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-6.jpg" alt="">
                        </div>
                        <span class="name">Adhamdannaway</span>
                        <i class="fa fa-circle away"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-7.jpg" alt="">
                        </div>
                        <span class="name">Ok</span>
                        <i class="fa fa-circle away"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-8.jpg" alt="">
                        </div>
                        <span class="name">Arashasghari</span>
                        <i class="fa fa-circle offline"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-9.jpg" alt="">
                        </div>
                        <span class="name">Joshaustin</span>
                        <i class="fa fa-circle offline"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
                <li class="list-group-item">
                    <a href="#">
                        <div class="avatar">
                            <img src="${ctx}/static/assets/images/knowledges/avatar-10.jpg" alt="">
                        </div>
                        <span class="name">Sortino</span>
                        <i class="fa fa-circle offline"></i>
                    </a>
                    <span class="clearfix"></span>
                </li>
            </ul>
        </div>
    </div>
    <!-- /Right-bar -->

</div>
<!-- END wrapper -->

<!-- jQuery  -->
<script src="${ctx}/static/assets/js/jquery.min.js"></script>
<script src="${ctx}/static/assets/js/bootstrap.min.js"></script>
<script src="${ctx}/static/assets/js/detect.js"></script>
<script src="${ctx}/static/assets/js/fastclick.js"></script>
<script src="${ctx}/static/assets/js/jquery.slimscroll.js"></script>
<script src="${ctx}/static/assets/js/jquery.blockUI.js"></script>
<script src="${ctx}/static/assets/js/waves.js"></script>
<script src="${ctx}/static/assets/js/wow.min.js"></script>
<script src="${ctx}/static/assets/js/jquery.nicescroll.js"></script>
<script src="${ctx}/static/assets/js/jquery.scrollTo.min.js"></script>

<script src="${ctx}/static/assets/js/jquery.app.js"></script>

<!-- moment js  -->
<script src="${ctx}/static/assets/plugins/moment/moment.js"></script>

<!-- counters  -->
<script src="${ctx}/static/assets/plugins/waypoints/lib/jquery.waypoints.js"></script>
<script src="${ctx}/static/assets/plugins/counterup/jquery.counterup.js"></script>

<!-- sweet alert  -->
<script src="${ctx}/static/assets/plugins/sweetalert/dist/sweetalert.min.js"></script>

<%--  暂时不用做报表 ，不用引入此插件--%>
<%--<!-- flot Chart -->
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.time.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.resize.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.pie.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.selection.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.stack.js"></script>
<script src="${ctx}/static/assets/plugins/flot-chart/jquery.flot.crosshair.js"></script>--%>

<!-- todos app  -->
<script src="${ctx}/static/assets/pages/jquery.todo.js"></script>



<!-- chat app  -->
<%--<script src="${ctx}/static/assets/pages/jquery.chat.js"></script>--%>

<!-- dashboard  -->
<%--<script src="${ctx}/static/assets/pages/jquery.dashboard.js"></script>--%>
<script type="text/javascript">
    var resizefunc = [];

    $(function () {
        $('.counter').counterUp({
            delay: 100,
            time: 1200
        });
    });
</script>

</body>
</html>