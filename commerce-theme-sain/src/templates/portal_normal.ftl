<!DOCTYPE html>
<#include init />
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>

<html class="${root_css_class} no-js" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>${the_title} - ${company_name}</title>
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="${images_folder}/favicon.ico" type="image/x-icon"/>

    <@liferay_util["include"] page=top_head_include />

</head>

<body class="${css_class}">
<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />
<!-- Start Header Area -->
<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", '') />
                    <@liferay_portlet["runtime"]
                    defaultPreferences="${freeMarkerPortletPreferences}"
                    portletProviderAction=portletProviderAction.VIEW
                    instanceId="headerArticleWelcome"
                    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
                        ${freeMarkerPortletPreferences.reset()}
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center">
                                <li class="account-settings">
                                    <@liferay_commerce["user-management-bar"]
                                    href=accountManagementUrl
                                    showNotifications=true
                                    />
                                    <#if (is_signed_in)>
                                        <i class="fa fa-angle-down"></i>
                                        <@site_navigation_menu_0 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                                    </#if>
                                </li>
                                <#if (!is_signed_in)>
                                    <li class="account-settings">
                                        <span class="sign-in text-default"><a href="http://shop.rozhbin.ir/product?p_p_id=com_liferay_login_web_portlet_LoginPortlet&amp;p_p_lifecycle=0&amp;p_p_state=maximized&amp;p_p_mode=view&amp;saveLastPath=false&amp;_com_liferay_login_web_portlet_LoginPortlet_mvcRenderCommandName=%2Flogin%2Fcreate_account" class="sign-in text-default">
                                            عضویت
                                            <span class="icon-monospaced fa fa-address-card-o fa-2"></span>
                                        </a></span>
                                    </li>
                                </#if>
                                <!--li class="language">
                                    <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                                    <@liferay_portlet["runtime"]
                                    defaultPreferences="${freeMarkerPortletPreferences}"
                                    portletProviderAction=portletProviderAction.VIEW
                                    instanceId="lang"
                                    portletName="com_liferay_site_navigation_language_web_portlet_SiteNavigationLanguagePortlet" />
                                    ${freeMarkerPortletPreferences.reset()}
                                </li-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-middle-area">
            <div class="container">
                <div class="row align-items-center">
                    <!-- start logo area -->
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="${site_default_url}">
                                <img src="${site_logo}" alt="${logo_description}">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- start search box area -->
                    <div class="col-lg-5">
                        <div class="search-box-wrapper">
                            <div class="search-box-inner-wrap">
                                <#assign
                                preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone"})
                                />

								<@liferay.search_bar default_preferences="${preferences}" />
                            </div>
                        </div>
                    </div>
                    <!-- start search box end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-4 ml-auto">
                        <div class="header-configure-area">
                            <ul class="nav justify-content-end">
                            <#if (is_signed_in)>
                                <li>
                                    <a href="${site_default_url}/orders" title="سفارشات">
                                        <i class="ion-ios-list-outline"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="${site_default_url}/downloads" title="دانلودها">
                                        <i class="ion-ios-cloud-download-outline"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="${site_default_url}/wishlist" title="علاقه مندیها">
                                        <i class="ion-android-favorite-outline" style="line-height: 54px;"></i>
                                    </a>
                                </li>
                            </#if>
                                <li class="mini-cart-wrap" title="سبد خرید">
                                    <#--<a href="${site_default_url}/cart">-->
                                        <#--<i class="ion-bag"></i>-->
                                        <#--<span class="notification ${miniCartClassName}">${orderItemsQuantity}</span>-->
                                    <#--</a>-->
                                    <#--<ul class="cart-list">-->
                                        <#--<@commerce_cart_mini default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />-->
                                        <@liferay_commerce_ui["mini-cart"] />
                                    <#--</ul>-->
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- mini cart area end -->
                </div>
            </div>
        </div>
        <!-- header middle area end -->

        <!-- main menu area start -->
        <div class="main-menu-area theme-color-2 sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3">
                        <div class="category-toggle-wrap">
                            <div class="category-toggle">
                                <i class="ion-android-menu"></i>
                                دسته بندی محصولات
                                <span><i class="ion-android-arrow-dropdown"></i></span>
                            </div>
                            <@commerce_category_navigation_menu default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="main-menu home-main">
                            <!-- main menu navbar start -->
                            <#include "${full_templates_path}/navigation.ftl" />
                            <!-- main menu navbar end -->
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="contact-top">
                            <div class="contact-top-icon">
                                <img src="${images_folder}/icon/download.png" alt="">
                            </div>
                            <div class="contact-top-info">
                                <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", '') />
                    <@liferay_portlet["runtime"]
                    defaultPreferences="${freeMarkerPortletPreferences}"
                    portletProviderAction=portletProviderAction.VIEW
                    instanceId="headerArticleContact"
                    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
                            ${freeMarkerPortletPreferences.reset()}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main menu area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <div class="mobile-header d-lg-none d-md-block sticky">
        <!--mobile header top start -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="mobile-header-top">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center justify-content-center">
                                <li class="account-settings">
                                    <@liferay_commerce["user-management-bar"]
                                    href=accountManagementUrl
                                    showNotifications=true
                                    />
                                    <#if (is_signed_in)>
                                        <i class="fa fa-angle-down"></i>
                                        <@site_navigation_menu_0 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                                    </#if>
                                </li>
                                <#if (!is_signed_in)>
                                    <li class="account-settings">
                                        <span class="sign-in text-default"><a href="http://shop.rozhbin.ir/product?p_p_id=com_liferay_login_web_portlet_LoginPortlet&amp;p_p_lifecycle=0&amp;p_p_state=maximized&amp;p_p_mode=view&amp;saveLastPath=false&amp;_com_liferay_login_web_portlet_LoginPortlet_mvcRenderCommandName=%2Flogin%2Fcreate_account" class="sign-in text-default">
                                            عضویت
                                            <span class="icon-monospaced fa fa-address-card-o fa-2"></span>
                                        </a></span>
                                    </li>
                                </#if>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-logo">
                            <a href="${site_default_url}">
                                <img src="${site_logo}" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-menu-toggler">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                            <#if (is_signed_in)>
                                <li>
                                    <a href="${site_default_url}/orders" title="سفارشات">
                                        <i class="ion-ios-list-outline"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="${site_default_url}/downloads" title="دانلودها">
                                        <i class="ion-ios-cloud-download-outline"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="${site_default_url}/wishlist" title="علاقه مندیها">
                                        <i class="ion-android-favorite-outline" style="line-height: 54px;"></i>
                                    </a>
                                </li>
                            </#if>
                                <li>
                                    <div class="mini-cart-wrap">
                                        <@liferay_commerce_ui["mini-cart"] />
                                    </div>
                                </li>
                                <li>
                                    <div class="mobile-menu-btn">
                                        <div class="off-canvas-btn">
                                            <i class="ion-android-menu"></i>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="category-toggle-wrap">
                        <div class="category-toggle">
                            <i class="ion-android-menu"></i>
                            دسته بندی محصولات
                            <span><i class="ion-android-arrow-dropdown"></i></span>
                        </div>
                        <@commerce_category_navigation_menu default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
</header>
<!-- end Header Area -->

<!-- off-canvas menu start -->
<aside class="off-canvas-wrapper">
    <div class="off-canvas-overlay"></div>
    <div class="off-canvas-inner-content">
        <div class="btn-close-off-canvas">
            <i class="ion-android-close"></i>
        </div>

        <div class="off-canvas-inner">
            <!-- search box start -->
            <div class="search-box-offcanvas" style="margin-bottom: 15px">
                <#assign
                preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone"})
                />

                <@liferay.search_bar default_preferences="${preferences}" />
            </div>
            <!-- search box end -->

            <!-- mobile menu start -->
            <div class="mobile-navigation">

                <!-- mobile menu navigation start -->
                <#include "${full_templates_path}/navigation.ftl" />
                <!-- mobile menu navigation end -->
            </div>
            <!-- mobile menu end -->

            <!-- offcanvas widget area start -->
            <div class="offcanvas-widget-area">
                <div class="off-canvas-contact-widget">
                    <ul>
                        <li><i class="fa fa-phone"></i>
                            <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", '') />
                    <@liferay_portlet["runtime"]
                    defaultPreferences="${freeMarkerPortletPreferences}"
                    portletProviderAction=portletProviderAction.VIEW
                    instanceId="headerArticleContact"
                    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
                        ${freeMarkerPortletPreferences.reset()}
                        </li>
                    </ul>
                </div>
                <div class="off-canvas-social-widget">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
            </div>
            <!-- offcanvas widget area end -->
        </div>
    </div>
</aside>
<!-- off-canvas menu end -->

<!-- main wrapper start -->
<section class="container-fluid" id="sain-commerce-theme">
    <#if selectable>
        <@liferay_util["include"] page=content_include />
    <#else>
        ${portletDisplay.recycle()}

        ${portletDisplay.setTitle(the_title)}

        <@liferay_theme["wrap-portlet"] page="portlet.ftl">
            <@liferay_util["include"] page=content_include />
        </@>
    </#if>
</section>
<!-- main wrapper end -->

<!--== Start Footer Area Wrapper ==-->
<footer class="footer-wrapper">

    <!-- newsletter area start -->
    <div class="newsletter-area theme-color-2 pt-36 pb-36">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-9 col-lg-12 m-auto">
                    <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", '') />
                    <@liferay_portlet["runtime"]
                    defaultPreferences="${freeMarkerPortletPreferences}"
                    portletProviderAction=portletProviderAction.VIEW
                    instanceId="footerArticleShip"
                    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
                ${freeMarkerPortletPreferences.reset()}
                </div>
            </div>
        </div>
    </div>
    <!-- newsletter area end -->

    <!-- footer main widget area -->
    <div class="footer-widget-area bg-gray">
        <div class="container">
            <div class="row">
                <!-- footer widget item start -->
                <div class="col-lg-6 col-md-6">
                    <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", '') />
                    <@liferay_portlet["runtime"]
                    defaultPreferences="${freeMarkerPortletPreferences}"
                    portletProviderAction=portletProviderAction.VIEW
                    instanceId="footerArticleAbout"
                    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
                    ${freeMarkerPortletPreferences.reset()}
                </div>
                <!-- footer widget item end -->

                <!-- footer widget item start -->
                <div class="col-lg-3 col-md-3">
                    <@site_navigation_menu_1 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                </div>
                <!-- footer widget item end -->

                <!-- footer widget item start -->
                <div class="col-lg-3 col-md-3">
                    <@site_navigation_menu_2 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                </div>
                <!-- footer widget item end -->
            </div>
        </div>
    </div>
    <!-- footer main widget end -->

    <!-- footer middle area start -->
    <div class="footer-middle-area bg-gray">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "Barebone") />
                    <#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
                    <#assign VOID = freeMarkerPortletPreferences.setValue("articleId", '') />
                    <@liferay_portlet["runtime"]
                    defaultPreferences="${freeMarkerPortletPreferences}"
                    portletProviderAction=portletProviderAction.VIEW
                    instanceId="footerArticlePay"
                    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
                    ${freeMarkerPortletPreferences.reset()}
                </div>
            </div>
        </div>
    </div>
    <!-- footer middle area end -->

    <!-- footer bottom area start -->
    <div class="footer-bottom-area bg-white">
        <div class="copyright-text">
            <p>طراحی و پیاده سازی توسط <a href="http://sain.ir">سپهرافزار ایرانیان</a> </p>
        </div>
    </div>
    <!-- footer bottom area end -->

</footer>
<!--== End Footer Area Wrapper ==-->

<!-- Scroll to top start -->
<div class="scroll-top not-visible">
    <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->

<!-- All vendor & plugins & active js include here -->
<script src="${javascript_folder}/slick.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${javascript_folder}/jquery.zoom.js" type="text/javascript" charset="utf-8"></script>
<#--<script src="${javascript_folder}/jquery.nice-select.min.js"></script>-->
<script src="${javascript_folder}/jquery.countdown.min.js"></script>
<#--<script src="${javascript_folder}/bootstrap.js"></script>-->
<script src="${javascript_folder}/custom.js"></script>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script>
    <!-- Hotjar Tracking Code for shop.rozhbin.ir -->

    (function(h,o,t,j,a,r){
        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
        h._hjSettings={hjid:1431513,hjsv:6};
        a=o.getElementsByTagName('head')[0];
        r=o.createElement('script');r.async=1;
        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
        a.appendChild(r);
    })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');

    <!-- Hotjar Tracking Code for shop.rozhbin.ir -->
</script>
</body>

</html>