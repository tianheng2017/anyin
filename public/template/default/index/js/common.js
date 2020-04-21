$(function () {
    wowInt();
    findTel();
    phoneTargetSelf();
      $(window).scroll(function(){
        if($(this).scrollTop()>0){
            $('body').addClass('scrollHeader');
        }else{
            $('body').removeClass('scrollHeader'); 
        }
    });
    //微信
    $(".wechat").click(function () {
        var url=$(this).data("img")
        var title=""
        title+="<div class='weixin-box'>"
        title+="<i class='c'>x</i>"
        title+="<h2>中国生物官方微信公众号</h2>"
        title+="<div class='img'><img src='"+ url +"' width='150px;' height='150px;'></div>"
        title+="</div>"
        $("body").remove(".weixin-box");
        $("body").append(title)      
    })

    //微博
    $(".weibo").click(function () {
        var url=$(this).data("img")
        var title=""
        title+="<div class='weixin-box'>"
        title+="<i class='c'>x</i>"
        title+="<h2>中国生物官方新浪微博账号</h2>"
        title+="<div class='img'><img src='"+ url +"' width='150px;' height='150px;'></div>"
        title+="</div>"
        $("body").remove(".weixin-box");
        $("body").append(title)      
    })
    
    $(document).on("click",".weixin-box .c",function(){
        $(".weixin-box").remove();
    })
    //end


    $(".pro_b_list").each(function () {
        if($(this).find("li").size()%2==0){

           // alert("这是个偶数");
    
        }else{
            var st =' <li><dl class="fixed"><dt><span><a href="javascript:void(0)">&nbsp;</a></span></dt><dd><span>&nbsp;</span></dd></dl></li> '
            $(this).append(st);	
            console.log(11)
        }
    })

   
    
    if($(window).width()>767){
        setTimeout(function(){
            $(".subsi-list li .txt").height($(".subsi-list li .img").height()-2);

            $(window).resize(function(){
                $(".subsi-list li .txt").height($(".subsi-list li .img").height()-2);
            })
        },100)

        
    }
    $(".subsi-list li .c").mCustomScrollbar();

    //ie7/8兼容
    if($("html").hasClass("lt9")){
        $(".nav>ul>li:last-child").addClass('last');
        $(".subsi-list li:nth-child(2n)").addClass('an');
    }

    $(window).scroll(function(){
        if($(this).scrollTop()>0){
            $('body').addClass('scrollHeader');
            $(".q_link").addClass('on');
        }else{
            $('body').removeClass('scrollHeader'); 
            $(".q_link").removeClass('on');
        }
    });

    //主导航
    if($(window).width()>1024){
        search();
        $(document).click(function(){           
             $(".search_wrap").slideUp(200);
             $(".header_search").removeClass("on");
        })

        $(".nav>ul>li").hover(function() {
            $(this).find(".navlist").stop().slideDown();
        }, function() {
            $(this).find(".navlist").stop().slideUp();
        });
    }else{
        $(".navlist").siblings("span").addClass("cur");
        $(document).on('click','.nav_phone_btn,.nav_phone_tit .button',function(){
            $('.nav_phone_btn').toggleClass('visible_nav');
            $('body').toggleClass('body_nav_phone');
        });
        $(".nav>ul>li>span").click(function(){
            $(this).parent("li").siblings().find("span").removeClass("on");
            $(this).parent("li").siblings().find(".navlist").slideUp();
            $(this).toggleClass("on");
            $(this).siblings(".navlist").slideToggle();
        })
    }
    //

    //底部模拟下拉
    selectbox();
    //


    //左侧菜单
    $(".menu-list li").each(function() {
        if($(this).find("ul").size()>0){
            $(this).addClass('has_sub');
        }
        $(".has_sub").click(function() {
            $(this).toggleClass('on');
        });
    });
    //


    if($("html").hasClass("lt9")){
        $(".index-part03 li:first-child").addClass('first');
        $(".about-part1 li:nth-child(2)").addClass('an');
        $(".about-part1 li .c p:nth-child(2)").addClass('an');

        $(".news-part1 .rr-box li:last-child").addClass('last');
        $(".news-part1 .rr-box li:first-child").addClass('first');
        $(".video-list li:nth-child(2n)").addClass('an');

        $(".business-part li:nth-child(2n)").addClass('an');

        $(".ph_table tbody tr:nth-child(2n)").addClass('an');

    }

    //关于我们 
    
    //公司介绍模块滚动条
    $(".about-part1 li .c").mCustomScrollbar();

    

    //新闻中心 通知滚动    
    var setTime;
    $(".notlist").hover(function(){
        clearInterval(setTime);
    },
    function(){
        setTime=setInterval(function(){
            var $first = $(".notlist:first");
            var height = $first.find("li:first").height();
            $first.animate({
                "marginTop":-height+"px"},500,function(){
                $first.css({
                    marginTop: 0
                }).find("li:first").appendTo($first);
            });
        },2000);
    }).trigger("mouseleave");

    //业务信息滚动条
    $(".business-part li .con").mCustomScrollbar();

    //职业发展滚动条
    $(".job-part1 .rr dd").mCustomScrollbar();

    



    //--------------公用选项卡切换
    $(".tab-box .tab-a").each(function() {
        $(this).click(function() {
            $(this).addClass("on").siblings().removeClass("on");
            var ii=$(this).index();
            //$.getScript("../js/ratio-img.js");
            $(this).parents(".tab-box").find(".tab-b").eq(ii).show().siblings().hide();
        });   
    })
    $(".tab-box").each(function (i) {
        $(this).find(".tab-a:eq(0)").click();
    });
    //end
    
    

})






function search(){
   $(".header_search").click(function (e) {
        e.preventDefault();
        e.stopPropagation();
       $(this).toggleClass("on");
       $(".search_wrap").slideToggle(200);
       $(".language dd").slideUp(200)
    })
    $(".search_box_text").click(function (e) {
        e.preventDefault();
        e.stopPropagation();
       
    })
}

function selectbox(){
    $(".select-box").each(function (i) {
        $(this).find("dt").click(function (e) {
                e.preventDefault();
                e.stopPropagation();
                var el = $(this).parents(".select-box");
                //el.addClass("open");
                if(el.hasClass('open')){
                        el.removeClass('open');
                }else{
                        el.addClass('open');
                        el.parents(".sel_box").siblings(".sel_box").find(".select-box").removeClass('open');
                }
        })

        $(".select-box").eq(i).find("dd a").each(function (x) {
            $(this).click(function () {
                var inde = $(this).index();
                $(this).addClass("on").siblings().removeClass("on");        
                var el = $(".select-box.open");
                el.next(".select-hidden").val($(this).attr("data-val"))
                el.find("dt a b").text($(this).text());
                el.find("dd a").eq(inde).addClass("on").siblings().removeClass("on");
                setTimeout(function () {
                    el.removeClass("open");
                },1)
            })

        })
    })
    $(document).click(function () {
            $(".select-box.open").removeClass("open");
    })
}





document.onreadystatechange = function(){
    if(document.readyState == 'complete') $(".loading_animate").fadeOut();
    //$(window).scrollTop(0);
}

function wowInt(){
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
        var wow = new WOW({
            boxClass: 'wow',
            animateClass: 'animated',
            offset:0,
            mobile: true,
            live: true
        });
        wow.init();
    };
}


/*手机端链接改为本窗口打开*/
function phoneTargetSelf(context){  
  if ($(window).width()<1024) {
    if(context==undefined){
      context=$(document);
    }
    $('a',context).each(function(){
      var target=$(this);
      var link=target.attr('target');
      target.attr('target','_self');
    })
  }
}


/*电话链接取消默认事件并添加样式*/
function findTel(context){
  if ($(window).width()>1024) {
    var condition = /^tel\:([0-9\-]+)|tel\:\+([0-9\-]+)$/;
    if(context==undefined){
      context=$(document);
    }
    $('a',context).each(function(index, el) {
      var target=$(this);
      var href=target.attr('href');
      if (condition.test(href)) {
        target.addClass('tel_link');
        target.on('click',function(event){
          event.preventDefault();
        })
      }
    });
  }
}

/*数字滚动*/
function digitInt(targetId,speed,trigger){
    if ($(targetId).length>0) {
        var count_add=0;
        var addTimer=null;
        var count=$(targetId);
        if ($(window).width()>1023) {
            if (trigger==null) {
                trigger=true;
            }
            if (trigger==true) {
                if (!count.get(0).getAttribute("digitTriggle")) {
                    addTimer = setInterval(function () {
                        count_add += Math.floor(Math.random() * speed);
                        if (count_add >= Number(count.attr("rel"))) {
                            count.text(addCommas(Number(count.attr("rel"))));
                            clearInterval(addTimer);
                        } else {
                            count.text(addCommas(count_add));
                        }
                    }, 10)
                }
                count.get(0).setAttribute('digitTriggle',true);              
            }
        }
        else{
            count.text(Number(count.attr("rel")));
        }
    }
}

function addCommas(nStr) {
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    // while (rgx.test(x1)) {
    //     x1 = x1.replace(rgx, '$1' + ',' + '$2');
    // }
    return x1 + x2;
}



window.onload = function(){
    setTimeout(function(){
        $(window).scroll();
    },300)
}