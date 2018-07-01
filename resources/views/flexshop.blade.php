<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi" data-load="trang-chu" >

<!-- Mirrored from phuc.viettechcorp.vn/webmau/flexshop/trang-chu.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Jun 2018 12:30:53 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    @yield('meta')
</head>
<body id="flexshop" class="">
@yield('content')<!-- wrapper -->
<div class="quickview-product dqdt-popup"></div>
<style>
    .cd-container {
        width: 90%;
        max-width: 768px;
        margin: 2em auto;
    }
    .cd-container::after {
        /* clearfix */
        content: '';
        display: table;
        clear: both;
    }
    .cd-top {
        display: inline-block;
        height: 40px;
        width: 40px;
        position: fixed;
        bottom: 40px;
        right: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
        /* image replacement properties */
        overflow: hidden;
        text-indent: 100%;
        white-space: nowrap;
        background: rgb(246, 157, 110) url(http://hstatic.net/581/1000123581/1000171890/cd-top-arrow.svg?v=180) no-repeat center 50%;
        visibility: hidden;
        opacity: 0;
        -webkit-transition: opacity .3s 0s, visibility 0s .3s;
        -moz-transition: opacity .3s 0s, visibility 0s .3s;
        transition: opacity .3s 0s, visibility 0s .3s;
        z-index: 999;
    }
    .cd-top.cd-is-visible, .cd-top.cd-fade-out, .no-touch .cd-top:hover {
        -webkit-transition: opacity .3s 0s, visibility 0s 0s;
        -moz-transition: opacity .3s 0s, visibility 0s 0s;
        transition: opacity .3s 0s, visibility 0s 0s;
    }
    .cd-top.cd-is-visible {
        /* the button becomes visible */
        visibility: visible;
        opacity: 1;
    }
    .cd-top.cd-fade-out {
        opacity: .7;
        z-index: 99999;
    }
    .no-touch .cd-top:hover {
        background-color: #e86256;
        opacity: 1;
    }
    @media only screen and (min-width: 768px) {
        .cd-top {
            right: 20px;
            bottom: 20px;
        }
    }
    @media only screen and (min-width: 1024px) {
        .cd-top {
            height: 60px;
            width: 60px;
            right: 30px;
            bottom: 30px;
        }
    }
</style>
<a href="#0" class="cd-top">Top</a>
<script>
    jQuery(document).ready(function($){
        // browser window scroll (in pixels) after which the "back to top" link is shown
        var offset = 300,
            //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
            offset_opacity = 1200,
            //duration of the top scrolling animation (in ms)
            scroll_top_duration = 700,
            //grab the "back to top" link
            $back_to_top = $('.cd-top');

        //hide or show the "back to top" link
        $(window).scroll(function(){
            ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
            if( $(this).scrollTop() > offset_opacity ) {
                $back_to_top.addClass('cd-fade-out');
            }
        });

        //smooth scroll to top
        $back_to_top.on('click', function(event){
            event.preventDefault();
            $('body,html').animate({
                    scrollTop: 0 ,
                }, scroll_top_duration
            );
        });

    });
</script>
<script src="{{asset('views/template/src/jquery.fancyboxb09cb09c.js?v=180')}}" type='text/javascript'></script>
<script src="{{asset('views/template/src/owl.carouselb09cb09c.js?v=180')}}" type='text/javascript'></script>
<script src="{{asset('views/template/src/jquery.easing.1.3b09cb09c.js?v=180')}}" type='text/javascript'></script>
</body>

<!-- Mirrored from phuc.viettechcorp.vn/webmau/flexshop/trang-chu.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Jun 2018 12:30:53 GMT -->
</html><style type="text/css">

    #infoPage{display:none}
    #scrollPage{position:fixed;right:10px;bottom:30px;z-index:999;display:none;}
    .iconFixed{border:solid 1px #ccc;padding:9px 10px 9px 32px;width:0;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;-webkit-transition:all .5s;-moz-transition:all .5s;transition:all .5s}
    .shopFixed{right:5px;top:110px}
    .phoneFixed a{color:#fff;font-size:20px;}
    .phoneFixed{position:fixed;z-index:9999;border-radius:5px;bottom:1%;left:1%;min-width:50px}
    input{outline:none}
    input[type=search]{-webkit-appearance:textfield;-webkit-box-sizing:content-box;font-family:inherit;font-size:100%}
    input::-webkit-search-decoration,input::-webkit-search-cancel-button{display:none}
    input[type=search]{background:#ededed url(../../../static.tumblr.com/ftv85bp/MIXmud4tx/search-icon.png) no-repeat 9px center}
    input[type=search]:focus{width:130px;background-color:#fff;border-color:#66CC75;-webkit-box-shadow:0 0 5px rgba(109,207,246,.5);-moz-box-shadow:0 0 5px rgba(109,207,246,.5);box-shadow:0 0 5px rgba(109,207,246,.5)}
    input:-moz-placeholder{color:#999}
    input::-webkit-input-placeholder{color:#999}
    #search input[type=search]{width:15px;padding-left:10px;color:transparent;cursor:pointer}
    #search input[type=search]:hover{background-color:#fff}
    #search input[type=search]:focus{width:130px;padding-left:32px;color:#000;background-color:#fff;cursor:auto}
    #search input:-moz-placeholder{color:transparent}
    #search input::-webkit-input-placeholder{color:transparent}

</style>


<div class="buttonFixed">
    <a id="linkShop" class="btn btn-danger" target="_blank" style="background-color:#3ab54a;border-color:#3ab54a" href="gio-hang.html" data-name="gio-hang" data-title="Giỏ hàng" >
        <i class="fa fa-shopping-cart" ></i>
        <small id="totalCart" style="color:white"></small>
    </a>
</div>
<style>
    #totalCart{
        right: 7px;
        font-weight: bold;
    }
    .buttonFixed a{
        color:white;
    }
    .buttonFixed{
        position:fixed;
        z-index:1;
        border-radius:5px;
        top:150px;
        right: 0;
    }
</style>
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "../../../connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7&appId=1773665449557195";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>