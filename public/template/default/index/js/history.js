//大事记高度
var getHistoryHeight;

$(function () {
    bank_1();
    //窗口改变大小回调ratio；
    var rtime = new Date();
    var timeout = false;
    var delta = 200;
    $(window).resize(function () {
        rtime = new Date();
        if (timeout === false) {
            timeout = true;
            if (!$("html").hasClass("ie7")) {
                setTimeout(resizeend, delta); //resize只回调最后一次
            }
        }
    });
    function resizeend() {  //window.resize回调
        if (new Date() - rtime < delta) {
            setTimeout(resizeend, delta);
        } else {
            timeout = false;
           // bank_1();
        }
    }

    //点击事件
    var activeSlide=0;
    if(activeSlide<=0){
        Pbtn_state0($('.bx_shiC'))
    }
    var slideCrunt=$('.bx_shiC li').length;
    //history_tab($('.bx_shiC li').eq(0))
    $(document).on('click','.bx_shiC li',function(){
        activeSlide=$(this).index();

        if(activeSlide>0 && activeSlide<slideCrunt-1){
            Pbtn_state1($('.bx_shiC'))
            Nbtn_state1($('.bx_shiC'))
        }else if(activeSlide==0 || activeSlide==slideCrunt-1){
            Pbtn_state0($('.bx_shiC'))
            Nbtn_state0($('.bx_shiC'))
        }

        $('.bx_shiC li').eq(activeSlide).addClass('on').siblings().removeClass('on');
        var $_this=$(this);
        history_tab($_this)

    });
    $(document).on('click','.bx_shiC .bx-wrapper .bx-next',function(){
        if(activeSlide>=slideCrunt-2){
            Nbtn_state0($('.bx_shiC'))
        }
        Pbtn_state1($('.bx_shiC'))
        activeSlide++;
        if(activeSlide<slideCrunt){
            history_tab($('.bx_shiC li').eq(activeSlide))
        }
        if(activeSlide>=slideCrunt){
            activeSlide=slideCrunt-1;
        }else{
            $('.bx_shiC li').eq(activeSlide).addClass('on').siblings().removeClass('on');
        }
    });
    $(document).on('click','.bx_shiC .bx-wrapper .bx-prev',function(){
        if(activeSlide<=1){
            Pbtn_state0($('.bx_shiC'))
        }
        Nbtn_state1($('.bx_shiC'))
        activeSlide--;
        if(activeSlide>=0){
            history_tab($('.bx_shiC li').eq(activeSlide))
        }
       if(activeSlide<0){
            Pbtn_state0($('.bx_shiC'))
            Nbtn_state1($('.bx_shiC'))
            activeSlide=0
        }else{
            $('.bx_shiC li').eq(activeSlide).addClass('on').siblings().removeClass('on');
        }
        
        
    });

});

function Pbtn_state1(Odom){
    Odom.find($('.bx-wrapper .bx-prev')).css({
        'opacity':1,
        'cursor':'pointer'
    });
}
function Nbtn_state1(Odom){
    Odom.find($('.bx-wrapper .bx-next')).css({
        'opacity':1,
        'cursor':'pointer'
    });
}
function Pbtn_state0(Odom){
    Odom.find($('.bx-wrapper .bx-prev')).css({
        'opacity':0.9,
        'cursor':'default'
    });
}
function Nbtn_state0(Odom){
    Odom.find($('.bx-wrapper .bx-next')).css({
        'opacity':0.9,
        'cursor':'default'
    });
}

function bank_1() {
    var numlength=$(".bx_shiC li").length-5;
    console.log(numlength)
    $(".bx_shiC").each(function (index, element) {
        var obj = $(this)
        var num = 5;
        obj.find(".bx-clone").remove()
        obj.find("ul li,ul").attr({ "style": "" })
        var ulhtml = obj.find("ul")
        obj.remove(".bx-wrapper");
        obj.html(ulhtml)
        //if ($(window).width() < 1281) num = 4;
        if ($(window).width() < 1000) num = 4;
        if ($(window).width() < 1000){
            numlength=$(".bx_shiC li").length-4;
        }
        if ($(window).width() < 600) num = 3;
        if ($(window).width() < 600){
            numlength=$(".bx_shiC li").length-3;
        }
        //if ($(window).width() < 400) num = 1;
        var xl = obj.width() / num;
        if (obj.find("ul li").size() >= num) {

            slider=obj.find("ul").bxSlider({
                auto: false,
                mode: 'horizontal',
                minSlides: num,
                maxSlides: num,
                moveSlides: 1,
                slideWidth: xl,
                startSlide:numlength,
                pager:false,
                infiniteLoop:false
            });

        }


    });

    setTimeout(function(){
        //$(".bx_shiC li").eq(10).addClass("on").click();
        $(".bx_shiC li:last-child").addClass("on").click();
    },1000)

}
function history_tab($_this){
    var url=$_this.data("src");
    if(url==null)return false;
    $.ajax({
        url:url,
        type:"GET",
        success: function (msg) {
            $("#his_con").height('auto');
            $("#his_con").html(msg);
            setTimeout(function(){
                $("#his_con").css("height","auto");

            },100)
           
        }
    });
};
function scrollT($Dom){
    if($(window).scrollTop()+$(window).height()>=$Dom.offset().top+300){
        return true;
    }
}


$(function () {
	/*if (!$("html").hasClass("lt8")) {
		ajax_con();
	}
	else{
		ie7_con();
	}*/
    ajax_con();
})

function ie7_con(){
alert(111)
}

//--------------ajax下拉页面无限加载
function ajax_con(){
            var $resourceTypeList = $('.his_list');
            function item_masonry() {
                    $resourceTypeList.imagesLoaded(function () {
                            $resourceTypeList.masonry({
                                    itemSelector: '.panel'
                            }).children(".panel").css("visibility", "visible");

                    });
            }
            item_masonry();
            $(window).resize(function () {
                    item_masonry();

            });

            $resourceTypeList.infinitescroll({
            navSelector     : "#more",
            nextSelector    : "#more a",
            itemSelector    : ".panel",
            clickb          : false,
            clickobj        : ".load-more-link",
            loading:{
                img: "../images/loading.gif",
                msgText: ' ',
                finishedMsg: '',
                finished: function(){
                    $("#infscr-loading").hide();
                }
            }, errorCallback:function(){
               $(".load-more-link").hide();
               $(".load-more-link").after("<div class='finMessage' style='background:rgba(0,0,0,0.4); position:fixed; width:100px; height:50px; line-height:50px; font-size:16px; overflow:hidden; border-radius:10px; text-align:center; color:#fff; left:50%; top:50%; z-index:1000; margin:-15px 0 0 -50px;'>没有了</div>");
               setTimeout(function(){
                $(".finMessage").fadeOut();
                },500)
            }

        }, function(newElements){
            var $newElems = $(newElements);
            $resourceTypeList.masonry('appended', $newElems, false).children(".panel").css("visibility", "visible");
            $newElems.fadeIn();
            return;
        })
}







