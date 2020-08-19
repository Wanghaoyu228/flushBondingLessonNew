<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <div class="knowledge-details">
            <div class="pull-left">
                <img src="${ctx}/static/assets/images/knowledges/avatar-1.jpg" alt="" class="thumb-md img-circle">
            </div>
            <div class="knowledge-info">
                <div class="dropdown">
                    <a class="dropdown-toggle">${knowledge.realName}</a>
                </div>
            </div>
        </div>
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>
                <c:if test="${knowledge.knowledgeType == 1}">
                    <li>
                        <a class="md md-notifications" onclick="showPage('/databaseConfig' , this)">数据库连接管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/databaseConn' , this)">数据库用户管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/knowledge' , this)">开发人员管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/organizationInfo' , this)">组织架构管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/roleInfo' , this)">权限管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/sqlManage' , this)">常用数据库sql管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/productDataBaseManage' , this)">生产环境管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/productSqlExamine' , this)">生产sql审核</a>
                    </li>
                </c:if>
                <c:if test="${knowledge.knowledgeType == 2}">
                    <li>
                        <a class="md md-notifications" onclick="showPage('/knowledge' , this)">数据库管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/message' , this)">常用连接管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/sqlManage' , this)">自定义sql管理</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/productSqlExamine' , this)">申请执行生产sql</a>
                    </li>
                    <li>
                        <a class="md md-notifications" onclick="showPage('/purchaseLog' , this)">已执行sql管理</a>
                    </li>
                </c:if>

            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>