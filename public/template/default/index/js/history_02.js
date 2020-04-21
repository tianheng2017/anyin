
$(function () {

        var history_Dom=$('.a_his_time');
        var history_Dom_width=history_Dom.width()-80;

        var ul_Dom=history_Dom.find('ul');
        var li_Dom = history_Dom.find('li');

        var li_width = li_Dom.outerWidth();
        var li_Size = li_Dom.length;


        var li_index = 0;
        var li_show_length=parseInt(history_Dom_width/li_width);
        var sep = 0;

        
        ul_Dom.css({
            'width':li_width*li_Size
        });

        $(document).on('click', '.hist_nav .index_history ul li', function () {
            li_index=$(this).index();
            //控制是否可以点击
            if(li_index==0){
                $('.hist_nav .a_his_time>a').removeClass('disabled');
                $('.hist_nav .a_his_time>a.his_left').addClass('disabled');
            }else if(li_index==li_Size-1){
                $('.hist_nav .a_his_time>a').removeClass('disabled');
                $('.hist_nav .a_his_time>a.his_right').addClass('disabled');
            }else{
                $('.hist_nav .a_his_time>a').removeClass('disabled');
            }
            //控制移动
            moveClick(li_index, true);

        });

        $(document).on('click','.his_left',function(){
            //控制是否可以点击
            $('.hist_nav .a_his_time>a.his_right').removeClass('disabled');
            if(li_index==1){
                $(this).addClass('disabled');
            }
            //控制移动
            if(li_index<=0){
               li_index==0;
            }else{
               li_index--; 
            }
            moveClick(li_index, true);

        });
        $(document).on('click','.his_right',function(){
            //控制是否可以点击
            $('.hist_nav .a_his_time>a.his_left').removeClass('disabled');
            if(li_index==li_Size-2){
                $(this).addClass('disabled');
            }
            //控制移动
            if(li_index>=li_Size-2){
                li_index=li_Size-1;
                $(this).addClass('disabled');
            }else{
                li_index++;
            }
            moveClick(li_index,true)

        });
        function moveClick(o_index,clo) {
            /*console.log(o_index);*/
            if (o_index >= li_show_length - 1) {

                if (o_index == (li_Size - 1)) {
                    sep = o_index - li_show_length
                } else {
                    sep = o_index - li_show_length + 1;
                }
                /*console.log(o_index);*/
                ul_Dom.stop().animate({
                    'left': -(1 + sep) * li_width
                });
            } else if (o_index < li_show_length) {
                ul_Dom.stop().animate({
                    'left': 0
                });
            }

            li_Dom.eq(o_index).addClass('active').siblings().removeClass('active');

            //与内容的关联
            if(clo){
                var li_string = li_Dom.eq(o_index).find("p").text();
                var con_string="";
                var con_top = "";
                var dl_top = "";
                $(".daj_div dl").each(function (index, ele) {
                    con_string = $(this).attr("class");
                    dl_top = $("." + con_string).eq(0).offset().top;
                    if (con_string == li_string) {
                        //con_top = dl_top - 250;
                        con_top = dl_top - 120;
                    };
                });
            
                $("html,body").stop().animate({ scrollTop: con_top }, 500);

            }
        }

    //滚动效果
        
       /* var his_nav="";
        his_nav = $(".about_tab").offset().top+40;
  
            setTimeout(function(){
                his_nav = $(".about_tab").offset().top+40;
          
            },2000);
 
        $(window).scroll(function () {
            var window_scroll = $(window).scrollTop();
            var header_height = $(".header").height();
            if (window_scroll + header_height >= his_nav-200) {

                $(".hist_nav").css({
                    "position": "fixed",
                    "top": header_height,
                    "z-index": "9999999",
                    "left": "0",
                    "right": "0"
                });

            } else{
                $(".hist_nav").css({
                    "position": "static"
                })
            }
            
        })*/

        //滚轮事件
        
        $(document).mousewheel(function (e, delta) {
            var aA = [];
            var dl_top = "";
            var window_scroll = $(window).scrollTop();
            //var header_height = $(".header").height();
            $(".daj_div dl").each(function (index, ele) {
                con_string = $(this).attr("class");
                dl_top = $("." + con_string).eq(0).offset().top;
                if ($(this).attr("class") != $(this).next().attr("class")) {
                    aA.push(dl_top);
                }
                
            });
            for (var i = 0; i < aA.length;i++){
                //if (window_scroll + header_height+200 > aA[i]) {
                if (window_scroll + 200 > aA[i]) {
                    moveClick(i, false);
                }
            };

        }).trigger("mousewheel");


})
