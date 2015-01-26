<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shinowit.model.TmeMerchandisecinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.shinowit.model.TmeMerchandiseinfo" %>
<%@ page import="com.shinowit.model.TbaMemberinfo" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/26
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>启奥</title>
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.merclist').click(function(){
                $.ajax({
                    type:"get",
                    url:"<%=request.getContextPath()%>/main/merchandisecid",
                    data:"merchandisecid=" + $(this).attr('data'),
                    contentType:"application/json",
                    success:function(data){
                        var refreshHtml='';
                        for(var i=0;i<data.length;i++){
                            refreshHtml +='<dl>'+
                            '<dt><a href="<%=request.getContextPath()%>/main/merchandiseid'+ data[i].merchandiseid+'" target="_new">'+
                            '<img src="<%=request.getContextPath()%>/images/T1.jpg" width="310" height="310" border="0" /></a>'+
                            '</dt>'+
                            '<dd>'+data[i].merchandisename+'</dd>'+
                            '<dd><span class="viv1">￥:'+data[i].price+'</span><span class="viv2">'+
                            '<a href="<%=request.getContextPath()%>/main/merchandiseid'+ data[i].merchandiseid +'" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>'+
                            '</dl>';
                        }
                        document.getElementById('productContent').innerHTML=refreshHtml;
                    }
                })
            })

        });

        $(document).ready(function(){
            $('.addchart').click(function(){
                $.ajax({
                    type:"get",
                    url:"<%=request.getContextPath()%>/chart/addchart",
                    data:"merchandiseid=" + $(this).attr('merid'),
                    contentType:"application/json",
                    success:function(){
                        alert("添加购物车成功");
                    }
                })
            })
        })

    </script>

</head>

<body>
<div id="box">
    <!--top start -->
    <div id="top">
        <a href="index1.jsp"><img src="<%=request.getContextPath()%>/images/logo.gif" alt="Estimation" width="255" height="58" border="0" class="logo" /></a>
        <p class="topDiv"></p>
        <p class="navLeft"></p>
        <ul>
            <li><a href="index1.jsp" class="hover">首页</a></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="#">在线客服</a></li>
            <li class="chart"><a href="<%=request.getContextPath()%>/chart/showchart">购物车</a></li>
        </ul>
        <p class="navRight"></p>
        <p class="topDiv"></p>
        <form name="serch" action="#" method="post">
            <input type="text" name="txtbox" value="购物搜索" class="txtBox" />
            <input type="submit" name="go" value="搜" class="go" />
        </form>
    </div>
    <!--top end -->
    <!--header start -->
    <div id="header">
        <!--nav start -->
        <div class="nav">
            <ul>
                <li class="first"><a href="#">新品上架</a></li>
                <li><a href="#">坚果炒货</a></li>
                <li><a href="#">补血大枣</a></li>
                <li><a href="#">经典肉类</a></li>
                <li><a href="#">进口零食</a></li>
                <li><a href="#">美味糖果</a></li>
                <li><a href="#">天然干果</a></li>
                <li><a href="#">蒙古奶酪</a></li>
                <li><a href="#">台湾牛轧糖</a></li>
                <li><a href="#">蜜饯果脯</a></li>
                <%

                    List<TbaMemberinfo> memberlist= (List<TbaMemberinfo>) request.getSession().getAttribute("memberlist");
                %>

                <%
                    if(memberlist==null){
                %>
                <li class="last"><div id="welcome" class="welmsgdiv2"><span>您好，欢迎光临果果香。</span><a href="<%=request.getContextPath()%>/jsp/login.jsp">登录</a><span class="Lloginfg">&nbsp;</span><a href="<%=request.getContextPath()%>/jsp/reg.jsp">注册</a></div>
                </li>
                <%
                }else{
                %>
                <c:forEach items="<%=memberlist%>" var="member">


                    <li class="last">
                        <div id="welcome" class="welmsgdiv2">
                            <span>${member.username}您好，欢迎光临果果香。</span>
                            <span class="Lloginfg">&nbsp;</span>
                            <a href="<%=request.getContextPath()%>/main/logout">注销</a></div>
                    </li>

                </c:forEach>
                <% } %>
            </ul>
        </div><!--nav end -->
        <div class="spacer"></div>
    </div>
    <!--header end -->
    <!--guide01 start -->
    <div class="guide01">
        <img src="<%=request.getContextPath()%>/images/guide_01.jpg" width="973" height="62" border="0" usemap="#Map" />
        <map name="Map" id="Map">
            <area shape="rect" coords="398,11,493,51" href="#" />
            <area shape="rect" coords="540,12,633,51" href="#" />
            <area shape="rect" coords="684,12,790,53" href="#" />
            <area shape="rect" coords="830,10,953,54" href="#" />
        </map>
    </div><!--guide01 end -->
    <!--guide02 start-->
    <%--<div class="guide02"> <a href="#"><img src="<%=request.getContextPath()%>/images/guide_02.jpg" width="492" height="107" border="0" /></a><a href="#"><img src="<%=request.getContextPath()%>/images/guide_03.jpg" width="481" height="107" border="0" /></a></div>--%>
    <!--guide02 end -->
    <!--recommend start-->
    <%--<div class="recommend">--%>
        <%--<h2>推荐美国山核桃长寿果 大杏仁 15.8/半斤 奶香味</h2>--%>
        <%--<p><img src="<%=request.getContextPath()%>/images/coma.gif" width="15" height="12" style="margin-right:12px;" />山核桃,又名胡桃、马核桃、核桃楸果,是乔木核桃楸的种子。山核桃营养丰富,价值很高,是一种优质木本高级油料作物。此外,还含锌、锰、铬等微量元素与尼克酸等。<img src="<%=request.getContextPath()%>/images/coma_inverse.gif" width="15" height="12" style="margin-left:12px;" /></p>--%>
    <%--</div>--%>
    <!--recommend end-->
    <!--body start -->
    <div id="body">
        <!--leftMain start -->
        <div id="leftMain">
            <!--left start -->
            <div id="left">
                <h2>商品分类</h2>
                <ul>
                    <%
                        List<TmeMerchandisecinfo> merchandiseclist=(List<TmeMerchandisecinfo>)request.getSession().getAttribute("merchandisec_list");
                    %>

                    <c:forEach items="<%=merchandiseclist%>" var="current_type">
                        <li><a class="merclist" data="${current_type.merchandisecid}">${current_type.merchandisecname}</a></li>
                    </c:forEach>

                </ul>
                <h2 class="detail">纸皮巴旦木龙果</h2>
                <ul class="leftLink">
                    <li><a href="#">特级椒盐味</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">特级椒盐味</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">特级椒盐味</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">特级椒盐味</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                    <li><a href="#">纸皮巴旦木龙果</a></li>
                </ul>
                <br class="spacer" />
<span style="color:#f9c441;">ssss<br />
ssssssssss<br />
</span>
            </div>
            <!--left end -->
        </div>
        <!--leftMain end -->
        <!--mid start -->
        <div id="mid">
            <h2>新品上市</h2>
            <!--hotsale_ad start -->
            <div class="hotsale_ad"><img src="<%=request.getContextPath()%>/images/pic1.jpg" width="780" height="274" /></div>
            <!--hotsale_ad end -->
            <!--hotsale start -->
            <div class="hotsale" id="productContent">
                <%
                    List<TmeMerchandiseinfo> merchandiselist=(List<TmeMerchandiseinfo>)request.getSession().getAttribute("merchandise");
                %>

                <c:forEach items="<%=merchandiselist%>" var="merchandise">
                    <dl>
                        <dt><a href="/chart/chart?merchandiseid=${merchandise.merchandiseid}" target="_new"><img src="<%=request.getContextPath()%>/images/T1.jpg" width="310" height="310" border="0" /></a></dt>
                        <dd>${merchandise.merchandisename}${merchandise.price}</dd>
                        <dd><span class="viv1">￥:18.0</span><span class="viv2"><a class="addchart" merid="${merchandise.merchandiseid}" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0"/></a></span></dd>
                    </dl>




                </c:forEach>

                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/T1.jpg" width="310" height="310" border="0" /></a></dt>--%>
                    <%--<dd>实心眼 特级薄皮奶香味 巴旦木 250g</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_02.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_03.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_04.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_05.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_06.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_07.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <%--<dl>--%>
                    <%--<dt><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/pro_08.jpg" width="160" height="160" border="0" /></a></dt>--%>
                    <%--<dd>推荐 新疆和田 玉枣 32元 肉厚 相当于昆仑山四星</dd>--%>
                    <%--<dd><span class="viv1">￥:18.0</span><span class="viv2"><a href="inner-page.html" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0" /></a></span></dd>--%>
                <%--</dl>--%>
                <br class="spacer" />
            </div>
            <!--hotsale end -->
        </div>
        <!--mid end -->
        <br class="spacer" />
    </div>
    <!--footer start -->
    <div id="footer">
        <ul>
            <li><a href="#">首页</a>|</li>
            <li><a href="#">关于我们</a>|</li>
            <li><a href="#">新闻资讯</a>|</li>
            <li><a href="#">价单下载</a>|</li>
            <li><a href="#">联系我们</a>|</li>
        </ul>
        <p class="copyright">Copyright 2010 vancl.com All Rights Reserved 冀ICP证xxxxxx号

        </p>
        <p class="design"><a href="http://www.CSSK8.com/" target="_blank" class="link">启奥科技</a></p>
    </div><!--footer end -->
    <!--body end -->
</div><!--box-->
</body>
</html>
