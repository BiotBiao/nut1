<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.shinowit.model.TmeMerchandiseinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.shinowit.model.TbaMemberinfo" %>
<%@ page import="com.shinowit.model.chartinfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/LoginAndReg.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/gmxx.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.1.4.2-min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/Calculation.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //jquery特效制作复选框全选反选取消(无插件)
            // 全选
            $(".allselect").click(function () {
                $(".tabSty01 input[name=newslist]").each(function () {
                    $(this).attr("checked", true);
                    // $(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
                });
                GetCount();
            });

            //反选
            $("#invert").click(function () {
                $(".tabSty01 input[name=newslist]").each(function () {
                    if ($(this).attr("checked")) {
                        $(this).attr("checked", false);
                        //$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
                    } else {
                        $(this).attr("checked", true);
                        //$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
                    }
                });
                GetCount();
            });

            //取消
            $("#cancel").click(function () {
                $(".tabSty01 input[name=newslist]").each(function () {
                    $(this).attr("checked", false);
                    // $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
                });
                GetCount();
            });

            // 所有复选(:checkbox)框点击事件
            $(".tabSty01 input[name=newslist]").click(function () {
                if ($(this).attr("checked")) {
                    //$(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
                } else {
                    // $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
                }
            });

            // 输出
            $(".tabSty01 input[name=newslist]").click(function () {
                // $("#total2").html() = GetCount($(this));
                GetCount();
                //alert(conts);
            });
        });
        //******************
        function GetCount() {
            var conts = 0;
            var aa = 0;
            $(".tabSty01 input[name=newslist]").each(function () {
                if ($(this).attr("checked")) {
                    for (var i = 0; i < $(this).length; i++) {
                        conts += parseInt($(this).val());
                        aa += 1;
                    }
                }
            });
            $("#shuliang").text(aa);
            $("#zong1").html((conts).toFixed(2));
            $("#jz1").css("display", "none");
            $("#jz2").css("display", "block");
        }
    </script>
    <%--<script type="text/javascript">--%>
        <%--$(function () {--%>
            <%--var t = $("#text_box1");--%>
            <%--$("#add1").click(function () {--%>
                <%--t.val(parseInt(t.val()) + 1)--%>
                <%--setTotal();--%>
                <%--GetCount();--%>
            <%--})--%>
            <%--$("#min1").click(function () {--%>
                <%--t.val(parseInt(t.val()) - 1)--%>
                <%--setTotal();--%>
                <%--GetCount();--%>
            <%--})--%>
            <%--function setTotal() {--%>

                <%--$("#total1").html((parseInt(t.val()) * 9).toFixed(2));--%>
                <%--$("#newslist-1").val(parseInt(t.val()) * 9);--%>
            <%--}--%>

            <%--setTotal();--%>
        <%--})--%>
    <%--</script>--%>

</head>

<body>
<div id="box">
<!--top start -->
<div id="top">
    <a href="index.html"><img src="<%=request.getContextPath()%>/images/logo.gif" alt="Estimation" width="255"
                              height="58" border="0"
                              class="logo"/></a>

    <p class="topDiv"></p>

    <p class="navLeft"></p>
    <ul>
        <li><a href="index.html" class="hover">首页</a></li>
        <li><a href="#">关于我们</a></li>
        <li><a href="#">在线客服</a></li>
        <li class="chart"><a href="/chart/showchart">购物车</a></li>
    </ul>
    <p class="navRight"></p>

    <p class="topDiv"></p>

    <form name="serch" action="#" method="post">
        <input type="text" name="txtbox" value="购物搜索" class="txtBox"/>
        <input type="submit" name="go" value="搜" class="go"/>
    </form>

</div>
<!--top end -->
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

            List<TbaMemberinfo> memberlist = (List<TbaMemberinfo>) request.getSession().getAttribute("memberlist");
        %>

        <%
            if (memberlist == null) {
        %>
        <li class="last">
            <div id="welcome" class="welmsgdiv2"><span>您好，欢迎光临果果香。</span><a
                    href="<%=request.getContextPath()%>/jsp/login.jsp">登录</a><span class="Lloginfg">&nbsp;</span><a
                    href="<%=request.getContextPath()%>/jsp/reg.jsp">注册</a></div>
        </li>
        <%
        } else {
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
    <img src="<%=request.getContextPath()%>/images/guide_01.jpg" width="973" height="62" border="0" usemap="#Map"/>
    <map name="Map" id="Map">
        <area shape="rect" coords="398,11,493,51" href="#"/>
        <area shape="rect" coords="540,12,633,51" href="#"/>
        <area shape="rect" coords="684,12,790,53" href="#"/>
        <area shape="rect" coords="830,10,953,54" href="#"/>
    </map>
</div>
<!--guide01 end -->
<!--body start -->
<div id="body">
    <div id="Login">
        <DIV id="gwc">
            <DIV class="mcar" style="width:774px; margin:auto"><IMG alt=我的购物车
                                                                    src="<%=request.getContextPath()%>/images/pic_gwc__r2_c2.jpg">
            </DIV>
            <DIV class="title"><SPAN id="transferSpan"></SPAN></DIV>
            <DIV id="divPointError" style="DISPLAY: none; FLOAT: left; MARGIN: 0px 0px 10px">
                <DIV class="pointErrorMsg">您目前的积分为：<SPAN id="myPointNumber">0</SPAN>分，本次购物需支付：<SPAN
                        id="needPointNumber">0</SPAN>分，请修改购物车中的积分换购产品。
                </DIV>
                <IMG id="imgPointError"
                     src="images/jifenbuzhu.gif" useMap=#Map border=0>
                <MAP id="Map"
                     name=Map>
                    <AREA shape=RECT coords=962,9,972,19
                          href="javascript:ClosePointError();">
                </MAP>
            </DIV>

            <DIV class="bxSty"><!--Product-->
                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="tabSty01"
                       id="shoppingCatTable">
                    <tr class="trSty01" bgcolor="#7a7f89">
                        <td class="tb1_td1"><input id="Checkbox1" type="checkbox" class="allselect"/>全选</td>
                        <td align="center" height="32">商品</td>
                        <td align="center" height="32">名称</td>
                        <td align="center" height="32">单价</td>
                        <td align="center" height="32">数量</td>
                        <td align="center" height="32">小计</td>
                        <td align="center">操作</td>
                    </tr>
                    <%
                        List<chartinfo> charlist = (List<chartinfo>) request.getSession().getAttribute("charlist");
                        if (charlist == null) {
                    %>
                    <tr>
                        <td  style="color:red;font-size:14px;">购物车为空，快去添加点东西吧。</td>
                    </tr>
                    <%

                    } else {

                    %>
                    <%
                        int index = 0;
//                                String merid=charlist.get(index).getMerchandiseid();
                    %>
                    <c:forEach items="<%=charlist%>" var="chart">

                        <tr>
                            <td class="tb2_td1"><input type="checkbox" value="1" name="newslist"
                                                       id="newslist-<%=index%>"/></td>
                            <td width="160" height="160" align="center" valign="middle"><span class="imgw"><a href="#"
                                                                                                              target="_blank"><img
                                    src="<%=request.getContextPath()%>/images/pro_04.jpg" border="0"
                                    width="160"/></a></span>
                            </td>
                            <td><a href="#" target="_blank"><span class="STYLE5">${chart.merchandisename}</span></a>
                            </td>
                            <td align="center">￥<span id="000726501">${chart.price}</span></td>
                            <td align="center">
                                <input id="min<%=index%>" name=""
                                       style=" width:10px; height:10px;border:1px solid #ccc;" type="button" value="-"/>
                                <input name="numid<%=index%>" id="numid<%=index%>" maxlength="3"
                                       style="width: 20px; height: 15px; color: rgb(75, 75, 75);"
                                       value=${chart.num} type="text"/>
                                <input id="add<%=index%>" name=""
                                       style=" width:10px; height:10px;border:1px solid #ccc;" type="button" value="+"/>
                            </td>
                            <td align="center">￥<span id="Pdt_price<%=index%>"
                                                      style="color:#ff5500;font-size:14px; font-weight:bold;"></span>
                            </td>
                            <td align="center"><a href="<%=request.getContextPath()%>/chart/deletechart">删除</a></td>
                        </tr>
                        <script type="text/javascript">
                            $(function () {
                                var t = $("#numid<%=index%>");
                                $("#add<%=index%>").click(function () {
                                    t.val(parseInt(t.val()) + 1)
                                    setTotal();
                                    GetCount();
                                })
                                $("#min<%=index%>").click(function () {
                                    t.val(parseInt(t.val()) - 1)
                                    setTotal();
                                    GetCount();
                                })
                                function setTotal() {
                                    $("#Pdt_price<%=index%>").html((parseInt(t.val()) * ${chart.price}).toFixed(2));
                                    $("#newslist-<%=index%>").val(parseInt(t.val()) *  ${chart.price});
                                }

                                setTotal();
                            })
                        </script>

                        <%
                            index = index + 1;
                        %>
                    </c:forEach>
                    <%
                        }
                    %>

                </table>
                <TABLE width="80%" border=0 align="center" cellPadding=0 cellSpacing=0 class="dobuleBorder">
                    <TBODY>
                    <tr>
                        <td class="tb1_td1"><input id="checkAll" class="allselect" type="checkbox"/></td>
                        <td class="tb1_td1">全选</td>
                        <td class="tb3_td1">
                            <input id="invert" type="checkbox"/>反选
                            <input id="cancel" type="checkbox"/>取消
                        </td>
                        <td class="tb3_td2">已选商品 <label id="shuliang"
                                                        style="color:#ff5500;font-size:14px; font-weight:bold;">0</label>
                            件
                        </td>
                        <td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;"><label id="zong1"
                                                                                                        style="color:#ff5500;font-size:14px; font-weight:bold;"></label></span>
                        </td>
                        <td class="tb3_td4"><span id="jz1">结算</span><a href="<%=request.getContextPath()%>/address/display" style=" display:none;" class="jz2"
                                                                       id="jz2">结算</a></td>
                    </tr>
                    <%--<TR>--%>
                    <%--<TD class="tdStyProductTotal" vAlign=top align=right>产品数量总计：<SPAN--%>
                    <%--class="colSty " id="spTotalCount">0</SPAN><SPAN--%>
                    <%--class="colSty sty008">件</SPAN>赠送积分总计：<SPAN class="colSty"--%>
                    <%--id="giftPoint">0</SPAN><SPAN--%>
                    <%--class="colSty sty008">分</SPAN>花费积分总计：<SPAN--%>
                    <%--class="colSty " id="totalPoint">0</SPAN><SPAN--%>
                    <%--class="colSty sty010">分</SPAN><SPAN id="decspan">产品金额总计：<SPAN--%>
                    <%--class="colSty ">￥</SPAN><SPAN class="colSty sty008"--%>
                    <%--id="spTotalAmount">0.00</SPAN><BR><SPAN--%>
                    <%--class="fontSty01">实际金额：<SPAN--%>
                    <%--class="colSty"><STRONG>￥</STRONG></SPAN><STRONG><SPAN class="colSty"--%>
                    <%--id="spRealTotalAmount">0.00</SPAN></STRONG></SPAN></SPAN>--%>
                    <%--</TD>--%>
                    <%--</TR>--%>
                    </TBODY>
                </TABLE>
                <TABLE width="80%" border=0 align="center" cellPadding=0 cellSpacing=0 class="tabSty001">
                    <TBODY>
                    <TR>
                        <TD class="tdSty03" vAlign=top align=left colSpan=2><A
                                href=<%=request.getContextPath()%>/main/index></A>
                            <IMG
                                    src="<%=request.getContextPath()%>/images/pic_gwc__r10_c3.jpg" alt=继续购物 width=95
                                    height=25 border="0"></A>
                            <A
                                    href=<%=request.getContextPath()%>/chart/clearchart>&nbsp;<IMG
                                    src="<%=request.getContextPath()%>/images/pic_gwc__r10_c8.jpg" alt=清空购物车 width=95
                                    height=25 border="0"
                                    class="jl02"></A></TD>
                        <TD align=left>&nbsp;</TD>
                        <TD align=middle>&nbsp;</TD>
                        <TD class="tdSty04" vAlign=top align=right colSpan=3><A
                                href="<%=request.getContextPath()%>/address/display"><IMG
                                src="<%=request.getContextPath()%>/images/pic_gwc__r2_c10.jpg" alt=去结算 border="0"></A>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
                <!--Product end--></DIV>
            <DIV id=OffProductList></DIV>
            <TABLE cellSpacing=0 cellPadding=0 width=760 border=0>
                <TBODY>
                <TR>
                    <TD vAlign=center align=left><SPAN
                            id="TenPayNotice"></SPAN></TD>
                </TR>
                </TBODY>
            </TABLE><SPAN
                id="leavelNotMustPresentLsit"></SPAN>

            <DIV class="sty006 reusableColor3" align=left style="width:774px; padding:0; margin:auto">
                您在购物过程中有任何疑问，请查阅 <A
                    href="#" target=_blank><SPAN
                    class="reusableColor1">帮助中心</SPAN></A> 或 <A href="#"
                                                                target=_blank><SPAN
                    class="reusableColor1">联系客服</SPAN></A></DIV>
            <DL class="dobuleBorder" style="display:none;">
                <DT><STRONG>关于"我的购物车"</STRONG></DT>
                <DD>·为方便您提交订单，您添加至"我的购物车"中已经选择的、尚未提交订单的商品清单，我们将为您保留90天。<BR>·在商品保留期间，您所选择商品的价格、优惠政策、库存、配送时间等信息可能会有所变化，请以网页最新信息为准。
                </DD>
            </DL>
        </DIV>
    </div>
    <br class="spacer"/>
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
    <p class="copyright">Copyright 2010 All Rights Reserved 冀ICP证xxxxxx号

    </p>

    <p class="design"><a href="#" target="_blank" class="link">启奥科技</a></p>
</div>
<!--footer end -->
<!--body end -->
</div>
<!--box-->
</body>
</html>
