$(document).ready(function() {
    var flag = false;
    var swiperFlag = false;
    var mySwiper = new Swiper('.banner_index', {
        autoplay: 5000,
        autoHeight: true,
        loop: true,
        pagination: '.banner_index .swiper-pagination',
        paginationClickable: true,
        onSlideChangeEnd: function(swiper) {
            //console.log(swiper.activeIndex);
            var _this = $('.banner_index .swiper-slide').eq(swiper.activeIndex);
            if(!swiperFlag) {
                swiperFlag = true;
            } else {
                videoSelect(_this);
            }
        }
    })
    videoSelect($('.banner_index .swiper-slide.swiper-slide-active'));
    function videoSelect(_this) {
        var flag = true;
        var cc = _this.hasClass('ban_video');
        if(cc) {
            mySwiper.stopAutoplay();
            if ($("html").hasClass("lt9")){
            }
            else{
                var videos =
                    '<video controls src="' + _this.data('video') + '" autoplay="autoplay" muted class="vv" poster="' + _this.data('src') + '" style="display:none;"></video>';
                _this.append(videos);
                if($(window).width()>767){
                    $(".inbanner .swiper-slide video").removeAttr("controls");
                }
                var aaa = setInterval(function() {
                    if(!isNaN($(".vv").get(0).duration) && flag) {
                        clearInterval(aaa);
                        flag = false;
                        setTimeout(function() {
                            _this.find('video').css("display", "block");
                        }, 500)
                    }
                }, 10);
                _this.find('video').bind('ended', function() {
                    mySwiper.slideNext();
                    mySwiper.startAutoplay();
                });
            }
        } else {
            $('.vv').remove();
        }
    }
});

$(window).scroll(function(){
    digitInt('#in-count-1',10,$('.digitbox li').hasClass('animated'));
    digitInt('#in-count-2',2,$('.digitbox li:eq(1)').hasClass('animated'));
    digitInt('#in-count-3',1.2,$('.digitbox li:eq(2)').hasClass('animated'));
    digitInt('#in-count-4',1.2,$('.digitbox li:eq(3)').hasClass('animated'));
});

$(function(){
    if ($("html").hasClass("lt9")){
        var ie_txt = $(".index-part02 .layer").html();
        $('.index-part02 .video-box').find(".layer").remove();
        $('.index-part02 .video-box').before(ie_txt);
        $('.index-part02').addClass('ie_i_p2');
        videoBox($(".video-box").width(), $(".video-box").height(), $(".video-box video").attr("src"), $(".video-box video").attr("poster"));
    }else{
        $(".index-part02 .video-box").addClass('pause');
        $(".index-part02 .video-box").find("video").trigger("pause");
        $(document).on("click", ".index-part02 .video-box .btn_play", function (){
            var this_v = $(this).parents(".video-box").find("video");
            if ($(this).parents(".video-box").hasClass('pause')) {
                this_v.trigger("play");
                $(this).parents(".video-box").removeClass('pause');
                $(this).parents(".video-box").addClass('play');
                $(this).addClass('pause');
            }
            else {
                this_v.trigger("pause");
                $(this).parents(".video-box").removeClass('play');
                $(this).parents(".video-box").addClass('pause');
                $(this).removeClass('pause');
            }
        });
    }

    function videoBox(width, height, url,img) {
        var s1 = new SWFObject("flvplayer.swf","single",width,height,"7");
        s1.addParam("allowfullscreen","true");
        s1.addParam("wmode","transparent");
        s1.addVariable("file",url);
        s1.addVariable("image", img);
        s1.addVariable("autostart","false");
        s1.addVariable("width",width);
        s1.addVariable("backcolor",0x000000);
        s1.addVariable("frontcolor",0xFFFFFF);
        s1.addVariable("lightcolor",0x000000);
        s1.addVariable("height",height);
        s1.write("indexplayer");
    }
});