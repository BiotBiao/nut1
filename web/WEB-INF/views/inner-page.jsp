<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shinowit.model.TmeMerchandisecinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.shinowit.model.TmeMerchandiseinfo" %>
<%@ page import="com.shinowit.model.TbaMemberinfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>启奥</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../css/innerstyle.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script>
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
<!--top start -->
<div id="top">
    <a href="index.html"><img src="../images/logo.gif" alt="Estimation" width="255" height="58" border="0"
                              class="logo"/></a>

    <p class="topDiv"></p>

    <p class="navLeft"></p>
    <ul>
        <li><a href="index.html" class="hover">首页</a></li>
        <li><a href="#">关于我们</a></li>
        <li><a href="#">在线客服</a></li>
        <li class="chart"><a href="<%=request.getContextPath()%>/chart/showchart">购物车</a></li>
    </ul>
    <p class="navRight"></p>

    <p class="topDiv"></p>

    <form name="serch" action="#" method="post">
        <input type="text" name="txtbox" value="购物搜索" class="txtBox"/>
        <input type="submit" name="go" value="搜" class="go"/>
    </form>
</div>
<!--top end -->
<!--header start -->
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
</div>
<!--header end -->
<!--guide01 start -->
<div class="guide01">
    <img src="../images/guide_01.jpg" width="973" height="62" border="0" usemap="#Map"/>
    <map name="Map" id="Map">
        <area shape="rect" coords="398,11,493,51" href="#"/>
        <area shape="rect" coords="540,12,633,51" href="#"/>
        <area shape="rect" coords="684,12,790,53" href="#"/>
        <area shape="rect" coords="830,10,953,54" href="#"/>
    </map>
</div>
<!--guide01 end -->
<!--guide02 start-->
<div class="guide02"><a href="#"><img src="../images/guide_02.jpg" width="492" height="107" border="0"/></a><a href="#"><img
        src="../images/guide_03.jpg" width="481" height="107" border="0"/></a></div>
<!--guide02 end -->
<!--body start -->
<div id="body" style="margin-top:1px;">
    <!--leftMain start -->
    <div id="leftMain">
        <!--left start -->
        <div id="left">
            <h2>商品分类</h2>
            <ul>
                <%
                    List<TmeMerchandisecinfo> merchandiseclist = (List<TmeMerchandisecinfo>) request.getSession().getAttribute("merchandisec_list");
                %>

                <c:forEach items="<%=merchandiseclist%>" var="current_type">
                    <li><a class="merclist" data="${current_type.merchandisecid}">${current_type.merchandisecname}</a>
                    </li>
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
            <br class="spacer"/>
    <span style="color:#f9c441;">sssss<br/>
    ssssssssss<br/>
    </span></div>
        <!--left end -->
    </div>
    <!--leftMain end -->
    <!--mid start -->
    <div id="mid">
        <%--<%--%>
            <%--TmeMerchandiseinfo merlist = (TmeMerchandiseinfo) request.getSession().getAttribute("inner_merchandiselist");--%>
        <%--%>--%>
        <%--<c:forEach items="${sessionScope.inner_merchandiselist}" var="list">--%>
        <h6><img height="28" src="../images/cp_1.jpg" width="584" border="0"/></h6>
        <!--pro_price start -->
        <div class="pro_price">
            <dl>
                <dt><img src="../images/T1.jpg" width="310" height="310"/></dt>
                <dd>
                    <table height="413" border="1" cellpadding="0" cellspacing="0"
                           style="border-collapse:collapse; border:#ccc 1px solid;">
                        <tbody>



                        <tr>
                            <td valign="top" align="middle" width="323" colspan="2"
                                height="30"><font
                                    color="#bb1213"><strong>${inner_merchandiselist.merchandisename}</strong></font></td>
                        </tr>
                        <%--<tr>--%>
                        <%--<td valign="top" align="right" width="111" --%>
                        <%--height="28">市 场 价：</td>--%>
                        <%--<td valign="top" width="212" height="28"><span style="text-decoration:line-through; font-size:14px;color:#666; font-weight:bold;">￥25.0</span></td>--%>
                        <%--</tr>--%>
                        <tr>
                            <td valign="top" align="right" width="111"
                                height="28">网 站 价：
                            </td>
                            <td valign="top" width="212" height="28"><span
                                    style=" font-size:14px;color:#c00; font-weight:bold;">￥${inner_merchandiselist.price}</span></td>
                        </tr>
                        <tr>
                            <td valign="top" align="right" width="111"
                                height="28">规&nbsp;&nbsp;&nbsp; 格：
                            </td>
                            <td valign="top" width="212" height="28">${inner_merchandiselist.spec}${inner_merchandiselist.name}</td>
                        </tr>
                        <tr>
                            <td valign="top" align="right" width="111" height="28">批 发 价：</td>
                            <td valign="top" width="212"
                                height="28">电话咨询
                            </td>
                        </tr>
                        <%--<tr>--%>
                            <%--<td align="right" width="111" height="5"></td>--%>
                            <%--<td width="212" height="5"></td>--%>
                        <%--</tr>--%>
                        <tr>
                            <td valign="top" align="right" width="111"
                                height="21">内&nbsp;&nbsp;&nbsp; 配：
                            </td>
                            <td valign="top" width="212" height="169" rowspan="2">
                                <table height="32" cellspacing="0" cellpadding="0"
                                       width="100%" border="0" style="border:none;">
                                    <tbody>
                                    <tr>
                                        <td
                                                valign="top">${inner_merchandiselist.remark}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="111" height="147">　</td>
                        </tr>
                        <tr>
                            <td align="middle" width="323" colspan="2"
                                height="89"><span style="font-size:20px; color:#f00; font-weight:bold;">批发价热线：0315-3876584</span>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                    <span class="viv2"><a class="addchart" merid="${inner_merchandiselist.merchandiseid}" target="_new"><img src="<%=request.getContextPath()%>/images/vivioow_b2.jpg" width="80" height="24" border="0"/></a></span>
                </dd>
                <br class="spacer"/>
            </dl>
        </div>
        <!--pro_detail start -->
        <div class="pro_detail">
            <h3>--详细介绍--</h3>
            <!--pro_detail_con start -->
            <div class="pro_detail_con">
                <p><strong>产品信息:</strong>${inner_merchandiselist.remark}

                <p><strong>公司主营项目：</strong>中秋月饼 端午粽子 年货礼品 有机食品 干果杂粮 水果蔬菜 山菌海鲜 橄榄油 柴鸡蛋等成套礼品</p>

                <p><strong>产品价格低:</strong>我们已与国内几十家正规大型工厂达成了共同开发、设计、生产、销售礼品的合作协议，最直接的礼品生产加工渠道以及薄利多销的经营准则使我们的礼品价格做到最低。
                </p>

                <p><strong>我们的客户包括:</strong>平安保险 光大银行 联想网御 爱国者 新雅迪传媒……北京乐购礼品团购网欢迎您的到来,公司服务于北京多家知名企事业单位。渠道市场京北京
                    贵宾贵宾服务百分百。乐购为您提供礼品团购全攻略，专业的服务永远是我公司的经营宗旨。您的支持和鼓励都将成为我们前进的方向。为您提供专业的礼品团购服务，确保你的礼品团购，买的更放心。</p>
            </div>
            <!--pro_detail_con end -->
        </div>
        <!--pro_detail end -->
        <br class="spacer"/>
        <%--</c:forEach>--%>
    </div>
    <!--mid end -->
    <br class="spacer"/>
</div>
<!--body end -->
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
</div>
<!--footer end -->
</div>
<!--box-->
</body>
</html>
