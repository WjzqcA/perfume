<%@page import="entity.items"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.ItemsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>Perfume Store</title>
    <link rel="icon" href="img/icon.png">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/styles_zh_CN.css">
</head>
<body class="fnb_zh_CN fnb_sticky-isOnTop">
    <div class="fnb_navigation">
        <div class="fnb_header fnb_white">
            <div class="fnb_gradient">

            </div>
            <div class="container">
                <div class="row fnb_gradient-menu">
                    <div class="fnb_text-center fnb_col-wd6 fnb_col-wd-offset-2">
                        <div class="fnb_logo">
                            <a href="index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-wd-4 pull-right ">
                        <%
                            String loginUser="";
                            if(session.getAttribute("loginUser")!=null){
                            	loginUser=session.getAttribute("loginUser").toString();
                            }
                            else{
                            	loginUser="请登录";
                            }
                        %>
                        <ul class="fnb_fixed-menu">
                            <li><input type="text" name="search" id="search" placeholder="请输查询内容...">
                                <i class="fa fa-search" aria-hidden="true"></i></li>
                            <a href="login.jsp"><li><i class="fa fa-user" aria-hidden="true"></i><span> <%= loginUser%></span></li></a>
                            <li><i class="fa fa-shopping-bag" aria-hidden="true"></i> <a
                                    href="cart.jsp">购物袋(<span>0</span>)</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="fnb_main-menu">
                <div class="fnb_main-menu-items">
                  
                    <div class="total menuitem">

                        <div class="fnb_main-menu-item">
                            <a class="fnb_active" href="" data-link="#totaltab">ALL</a>
                        </div>
                    </div>
                    <div class="Chanel menuitem">
                        <div class="fnb_main-menu-item">
                            <a class="" href="" data-link="#Chaneltab">CHANEL</a>
                        </div>
                    </div>
                    <div class="dior menuitem">
                        <div class="fnb_main-menu-item">
                            <a class="" href="" data-link="#diortab">Dior</a>
                        </div>
                    </div>
                    <div class="Lancome menuitem">
                        <div class="fnb_main-menu-item">
                            <a class="" href="" data-link="#Lancometab">LANCOME</a>
                        </div>
                    </div>
                    <div class="BVLGARI menuitem">
                        <div class="fnb_main-menu-item">
                            <a class="" href="" data-link="#BVLGARItab">BVLGARI</a>
                        </div>
                    </div>
                    <div class="Other menuitem">
                        <div class="fnb_main-menu-item">
                            <a class="" href="" data-link="#Othertab">Other</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main role="main" class="fnb_main-container">
        <div class="pushZone">
            <section class="fnb_fullbleed-container fnb_is-parent">
                <div class="paredito parsys"></div>
            </section>
        </div>
        <div class="container fnb_products-container fnb_plp-page load">
        
            <div class="fnb_products__ container clearfix fnb_products-container">
                <ul class="row">
                <!-- 开始 -->
                <%
                        ItemsDAO itemsDAO=new ItemsDAO();
                        ArrayList<items> list=itemsDAO.getAllitems();
                        if(list!=null&&list.size()>0)
                        {
                            for(int i=0;i<list.size();i++){
                                items item=list.get(i);
                    %>
                    <li class="fnb_inline">
                        <div class="fnb_col-wd6 fnb_product-grid clearfix fnb_event_listener fadding">
                            <div class="fnb_col-wd6 fnb_product-img">
                                <a href="details.jsp?id=<%= item.getId()%>"><img class="fnb_img-responsive fnb_img-desc load" src="img/<%=item.getPhoto() %>" alt=""></a>
                            </div>
                            <div class="fnb_col-wd6 fnb_product-grid-infos">
                                <div class="fnb_inline-block">
                                    <div class="fnb_product-title"><a><%=item.getEngname() %></a></div>
                                </div>
                                <div class="fnb_product_grid_description">
                                    <p><a><%=item.getName() %></a></p>
                                    <p class="fnb_desc"><%=item.getDesc() %></p>
                                </div>
                                <p class="fnb_text-3 fnb_product-price fnb_font-2 ">￥<span><%=item.getPrice() %></span></p>
                                <div class="fnb_buy">
                                    <div class="quickbuyButton button">
                                        <div style="text-align: left">
                                            <div class="fnb_buy">
                                                <button class="fnb_btn fnb_content_btn fnb_black  fnb_font-1 fnb_quickbuy-btn  " type="button">立即购买</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                <!-- 结束 -->
                <%
                                 }
                             }
                        %>
                </ul>
            </div>
            
        </div>
        <div class="container fnb_products-container">
            <div id="pagination" class="pagination">
                <ul>
                    <li class="disabled">&lt;</li>
                    <li class="active">1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                    <li>&gt;</li>
                </ul>
            </div>
        </div>
    </main>

    <footer class="fnb_modal-footer">
        <div class="container">
            <ul>
                <li>
                    <a class="fohead">支付/配送</a>
                    <a href="">货到付款</a>
                    <a href="">在线支付</a>
                    <a href="">配送时间</a>
                </li>
                <li>
                    <a class="fohead">售后服务</a>
                    <a href="">退换货规定</a>
                    <a href="">退换及退款说明</a>
                </li>
                <li>
                    <a class="fohead">Regina与您</a>
                    <a href="">法律声明</a>
                    <a href="">隐私政策</a>
                    <a href="">Regina介绍</a>
                </li>
            </ul>
            <p>联系地址：Regina专营店　 电话：0513-12345678 传真：0588-987654321<br>版权所有：浙江Regina有限公司　浙ICP备000012345号
            </p>
        </div>
    </footer>
</body>
</html>