<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="res/DigitalOA/css/style.css" />
    <link rel="stylesheet" type="text/css" href="res/DigitalOA/css/WdatePicker.css" />
    <link rel="stylesheet" type="text/css" href="res/DigitalOA/css/skin_/table.css" />
    <link rel="stylesheet" type="text/css" href="res/DigitalOA/css/jquery.grid.css" />
    <link rel="stylesheet" href="res/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="res/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="res/layer/layer.js"></script>
    <script type="text/javascript" src="res/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="res/js/global.js"></script>
    <title>日志列表</title>
</head>

<body>
<div id="container">
    <div id="hd"></div>
    <div id="bd">
        <div id="main">
            <div class="search-box ue-clear">
                <div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" data-define="define" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">自定义</span>
                            </span>
                            <span class="define-input">
                            	<input type="text" placeholder="开始时间" />
                                <span class="division"></span>
                                <input type="text" placeholder="结束时间" />
                            </span>
                        </div>
                    </div>
                </div>
                <div class="search-button">
                    <input class="button" type="button" value="搜索一下" />
                </div>
                <button type="button" class="btn btn-primary right" id="refresh"><span class="glyphicon glyphicon-refresh"></span></button>
            </div>

            <div class="table">
                <div class="opt ue-clear">
                	<span class="sortarea">
                    	<span class="sort">
                        	<label>排序：</label>
                            <span class="name">
                            	<i class="icon"></i>
                                <span class="text">名称</span>
                            </span>
                        </span>

                        <i class="list"></i>
                        <i class="card"></i>
                    </span>
                    <span class="optarea">
                        <a href="javascript:;" class="statistics">
                            <i class="icon"></i>
                            <span class="text">统计</span>
                        </a>
                    </span>
                </div>

                <div class="grid">
                    <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th class="text-center"><input type="checkbox"/></th>
                            <th class="text-center">ID</th>
                            <th class="text-center">标题</th>
                            <th class="text-center">内容</th>
                            <th class="text-center">更新时间</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${(page.list)!= null && fn:length(page.list) > 0}">
                            <c:forEach items="${page.list }" var="note">
                                <tr>
                                    <td class="text-center"><input type="checkbox"/></td>
                                    <td class="text-center">${note.npId}</td>
                                    <td class="text-center">${note.npTitle}</td>
                                    <td class="text-center">
                                        <c:choose>
                                            <c:when test="${fn:length(note.npContent) > 50}">
                                                <c:out value="${fn:substring(note.npContent, 0, 50)}......" />
                                            </c:when>
                                            <c:otherwise>
                                                <c:out value="${note.npContent}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="text-center">
                                        <jsp:useBean id="dateValue" class="java.util.Date"/>
                                        <jsp:setProperty name="dateValue" property="time" value="${note.npUpdatedate}"/>
                                        <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd HH:mm"/>
                                    </td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-info btn-sm" onclick="preview(${note.npId})"><span class="glyphicon glyphicon-search"></span> 预览</button>
                                        <button type="button" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-pencil"></span> 编辑</button>
                                        <button type="button" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span> 删除</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${(page.list)!= null && fn:length(page.list) == 0}">
                            <tr>
                                <td colspan="6" class="text-center" style="color:#FF0000;">暂无记录</td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>

                    <nav aria-label="">
                        <ul class="pager">
                            <c:if test="${page.currentPage==1}">
                                <li class="disabled"><a href="javascript:;">首页</a></li>
                                <li class="disabled"><a href="javascript:;">上一页</a></li>
                            </c:if>
                            <c:if test="${page.currentPage!=1}">
                                <li><a href="admin/notepad/getNotePads.shtml?currentPage=1">首页</a></li>
                                <li><a href="admin/notepad/getNotePads.shtml?currentPage=${page.currentPage-1}">上一页</a></li>
                            </c:if>
                              &nbsp;&nbsp;当前 ${page.currentPage} / ${page.pageNum} 页&nbsp;&nbsp;(共${page.totalCount}条记录)
                            <c:if test="${page.currentPage==page.pageNum}">
                                <li class="disabled"><a href="javascript:;">下一页</a></li>
                                <li class="disabled"><a href="javascript:;">末页</a></li>
                            </c:if>
                            <c:if test="${page.currentPage!=page.pageNum}">
                                <li><a href="admin/notepad/getNotePads.shtml?currentPage=${page.currentPage+1}">下一页</a></li>
                                <li><a href="admin/notepad/getNotePads.shtml?currentPage=${page.pageNum}">末页</a></li>
                            </c:if>
                        </ul>
                    </nav>
                </div>

                <div class="pagination"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

