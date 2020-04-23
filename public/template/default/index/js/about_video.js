//视频点击播放
$(function(){

  if ($("html").hasClass("lt9")){
    $('head').prepend('<link href="/template/default/index/css/idangerous.swiper.css" rel="stylesheet" type="text/css" />');
    $('head').prepend('<script type="text/javascript" src="/template/default/index/js/idangerous.swiper.min.js"></script>');
    about_slide_ie();
    videoBox1($(".about-part2 li").width(), $(".about-part2 li").height(), $(".about-part2 li:eq(0) video").attr("src"), $(".about-part2 li:eq(0) video").attr("poster"));
    videoBox2($(".about-part2 li").width(), $(".about-part2 li").height(), $(".about-part2 li:eq(1) video").attr("src"), $(".about-part2 li:eq(1) video").attr("poster"));
    videoBox3($(".about-part2 li").width(), $(".about-part2 li").height(), $(".about-part2 li:eq(2) video").attr("src"), $(".about-part2 li:eq(2) video").attr("poster"));
    videoBox4($(".about-part2 li").width(), $(".about-part2 li").height(), $(".about-part2 li:eq(3) video").attr("src"), $(".about-part2 li:eq(3) video").attr("poster"));
    videoBox5($(".about-part2 li").width(), $(".about-part2 li").height(), $(".about-part2 li:eq(4) video").attr("src"), $(".about-part2 li:eq(4) video").attr("poster"));
    videoBox6($(".about-part2 li").width(), $(".about-part2 li").height(), $(".about-part2 li:eq(5) video").attr("src"), $(".about-part2 li:eq(5) video").attr("poster"));
}
else{
    $('head').prepend('<link href="/template/default/index/css/swiper-3.4.2.min.css" rel="stylesheet" type="text/css" />');
    $('head').prepend('<script type="text/javascript" src="/template/default/index/js/swiper-3.4.2.jquery.min.js"></script>');
    about_slide();
    video_play();
}
     $(".about2_p").mCustomScrollbar({});

     $(".about_block03 .public_tite li").click(function(){

      $(this).addClass("on").siblings().removeClass("on");

      $(".about_team_group>div").eq($(this).index()).show().siblings().hide();

    })

      if($(window).width()>=768){
     }


     
      
      

 })
      

if (window.addEventListener){
  window.addEventListener('DOMMouseScroll', wheel, false);
  window.onmousewheel = document.onmousewheel = wheel;
}

function wheel(event){

    var delta = 0;

    if (!event) event = window.event;

    if (event.wheelDelta) {

        delta = event.wheelDelta/120; 

        if (window.opera) delta = -delta;

    } else if (event.detail) {

        delta = -event.detail/3;

    }

    if (delta)

        handle(delta);

}



function handle(delta) {

    if (delta <0){

      $(".section").removeClass("on");

    }else{

        

        $(".section.active").addClass("on").siblings().removeClass("on");

    }

}





 function about_slide() {
      if($(".about-part2 .swiper-slide").size()>2){
        var aboutIndexSwiper = new Swiper('.about-part2 .swiper-container', {
          slidesPerView: 2,
          speed: 300,
          loop: false,
          prevButton:'.about-part2 .swiper-button-prev',
          nextButton:'.about-part2 .swiper-button-next',  
          breakpoints:{
            767: {
                 slidesPerView: 1,
            }
        },        
        })
      }
      else{
        $(".about-part2 .swiper-button-prev,.about-part2 .swiper-button-next").hide();
      }
      

}

function about_slide_ie() {
  if($(".about-part2 .swiper-slide").size()>2){
      var aboutIndexSwiper_ie = new Swiper('.about-part2 .swiper-container', {
          slidesPerView: 2,
          speed: 300,
          loop: false,            
      })
      $('.about-part2 .swiper-button-prev').on('click', function (e) {
          //e.preventDefault();
          aboutIndexSwiper_ie.swipePrev();
      })
      $('.about-part2 .swiper-button-next').on('click', function (e) {
          //e.preventDefault();
          aboutIndexSwiper_ie.swipeNext();
      })
  }
  else{
    $(".about-part2 .swiper-button-prev,.about-part2 .swiper-button-next").hide();
  }
  

}



function video_play(){
      $(".about-part2 li").addClass('pause');
      $(".about-part2 li").find("video").trigger("pause");

      $(document).on("click", ".about-part2 li", function () { 
          if ($(this).hasClass('pause')) {
            $(this).find("video").trigger("play");
            $(this).removeClass('pause').addClass('play');
            $(this).find(".layer").hide();

            $(this).siblings("li").find("video").trigger("pause");
            $(this).siblings("li").removeClass('play').addClass('pause');
            $(this).siblings("li").addClass('pause');
            $(this).siblings("li").find(".layer").show();

            }
          /*else {
            $(this).find("video").trigger("pause");
            $(this).removeClass('play').addClass('pause');
            $(this).find(".layer").show();
          }*/
     })
  }



  function videoBox1(width, height, url,img) {
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
      s1.write("indexplayer1");
    }

    function videoBox2(width, height, url,img) {
    var s2 = new SWFObject("flvplayer.swf","single",width,height,"7");
      s2.addParam("allowfullscreen","true");
      s2.addParam("wmode","transparent");
      s2.addVariable("file",url);
      s2.addVariable("image", img);
      s2.addVariable("autostart","false");
      s2.addVariable("width",width);
      s2.addVariable("backcolor",0x000000);
      s2.addVariable("frontcolor",0xFFFFFF);
      s2.addVariable("lightcolor",0x000000);
      s2.addVariable("height",height);
      s2.write("indexplayer2");
    }
    function videoBox3(width, height, url,img) {
      var s3 = new SWFObject("flvplayer.swf","single",width,height,"7");
        s3.addParam("allowfullscreen","true");
        s3.addParam("wmode","transparent");
        s3.addVariable("file",url);
        s3.addVariable("image", img);
        s3.addVariable("autostart","false");
        s3.addVariable("width",width);
        s3.addVariable("backcolor",0x000000);
        s3.addVariable("frontcolor",0xFFFFFF);
        s3.addVariable("lightcolor",0x000000);
        s3.addVariable("height",height);
        s3.write("indexplayer3");
      }
    function videoBox4(width, height, url,img) {
      var s4 = new SWFObject("flvplayer.swf","single",width,height,"7");
        s4.addParam("allowfullscreen","true");
        s4.addParam("wmode","transparent");
        s4.addVariable("file",url);
        s4.addVariable("image", img);
        s4.addVariable("autostart","false");
        s4.addVariable("width",width);
        s4.addVariable("backcolor",0x000000);
        s4.addVariable("frontcolor",0xFFFFFF);
        s4.addVariable("lightcolor",0x000000);
        s4.addVariable("height",height);
        s4.write("indexplayer4");
      }
    function videoBox5(width, height, url,img) {
      var s5 = new SWFObject("flvplayer.swf","single",width,height,"7");
        s5.addParam("allowfullscreen","true");
        s5.addParam("wmode","transparent");
        s5.addVariable("file",url);
        s5.addVariable("image", img);
        s5.addVariable("autostart","false");
        s5.addVariable("width",width);
        s5.addVariable("backcolor",0x000000);
        s5.addVariable("frontcolor",0xFFFFFF);
        s5.addVariable("lightcolor",0x000000);
        s5.addVariable("height",height);
        s5.write("indexplayer5");
      }
      function videoBox6(width, height, url,img) {
        var s6 = new SWFObject("flvplayer.swf","single",width,height,"7");
          s6.addParam("allowfullscreen","true");
          s6.addParam("wmode","transparent");
          s6.addVariable("file",url);
          s6.addVariable("image", img);
          s6.addVariable("autostart","false");
          s6.addVariable("width",width);
          s6.addVariable("backcolor",0x000000);
          s6.addVariable("frontcolor",0xFFFFFF);
          s6.addVariable("lightcolor",0x000000);
          s6.addVariable("height",height);
          s6.write("indexplayer6");
        }


$(function(){
  
  if($(window).width()>767){
      var h_height=$("#section0").height()+$("#section1").height()+$("#section2").height()+$("#section3").height()+$("#section4").height();
      $(window).scroll(function(){
        if($(window).scrollTop()>=h_height){
            $("body").addClass("hiscur");
        }else{
            $("body").removeClass("hiscur");
            //$(".hist_nav .index_history li").eq(0).addClass("active").siblings().removeClass("active")
        }
      });

  }else{
    var h_height=$("#section0").height()+$("#section1").height()+$("#section2").height()+$("#section3").height()+$("#section4").height()/3;
    var h_height02=$("#section0").height()+$("#section1").height()+$("#section2").height()+$("#section3").height()+$("#section4");
      $(window).scroll(function(){
        if($(window).scrollTop()>=h_height){
            $("body").addClass("hiscur");
            
        }
        else{
            $("body").removeClass("hiscur");
            //$(".hist_nav .index_history li").eq(0).addClass("active").siblings().removeClass("active")
        }

      });
  }

})



