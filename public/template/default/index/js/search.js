$(function(){
	var classid=getClassID();
	var aid=getInfoID();
	if(aid!="0"){
		artclick(classid,aid)	
	}else{
		if(classid!="0"){
			classclick(classid);	
		}	
	}
})
function getinterface_data(id,key,lti){
	$.ajax({
        type: "post",
        url: "/index.php?a=getdata_interface",
        data: {
            key: key,
            lti: lti
        },
        success: function (msg) {
            var obj = eval('(' + msg + ')');
            $("#"+id).html(obj.ListHtml);
        }
    })
}
/*栏目点击率方法*/
function classclick(cid){
	$.ajax({
		type: "POST",
		dataType: "json",
		url: '/index.php?a=hits',
		data: {catid:cid},
		success: function (data) {
		
		}
	});
}
/*文章页浏览量*/
function artclick(cid,aid){
	$.ajax({
		type: "POST",
		dataType: "json",
		url: '/index.php?a=hit',
		data: {
		id:aid,
		catid:cid
		},
		success: function (data) {
			$("#hitid").html("浏览量："+data);
		}
	});	
}
var Request = { 
	QueryString: function (key) {
	var svalue = window.location.search.match(new RegExp("[\?\&]" + key + "=([^\&]*)(\&?)", "i"));
	return svalue ? svalue[1] : svalue;
	}
}


//回车事件
function EnterFunction(ElementInput, ElementBtn) {
    $(ElementInput).keydown(function (e) {
        var curKey = e.which;
        if (curKey == 13) {
            $(ElementBtn).click();
        }
    });
}
$(function () {
    EnterFunction("#formd_search_id", "#btnSearch");
	EnterFunction("#formd_search_id1", "#btnSearch1");
    EnterFunction("#search-field", "#btnSearch");
    EnterFunction("#keywords", ".go_page");
	EnterFunction("#product_key", "#product_submit");
	EnterFunction("#product_key_search", "#product_submit_search");
})


function ajaxhelpS(data, fn) {
    $.ajax({
        "type": "post",
        "url": "/index.php?g=Contents&m=Index&a=public_search",
        "data": data,
        "datatype": "html",
        "success": function (msg) {
            if (fn) {
                fn(msg);
            }
        },
        "error": function () {
            /*alert("对不起,服务器繁忙请稍后重试");*/
        }
    });
}

function ajaxPublicSearch(data, fn) {
    $.ajax({
        "type": "post",
        "url": "/index.php?g=Contents&m=Index&a=public_ajax_search",
        "data": data,
        "datatype": "html",
        "success": function (msg) {
            if (fn) {
                fn(msg);
            }
        },
        "error": function () {
            /*alert("对不起,服务器繁忙请稍后重试");*/
        }
    });
}

$(function(){
	$(document).on("click","#product_submit",function(){
		$pkey=$("#product_key").val();
		if($pkey==''){
			alert("请输入关键字进行搜索！");
			return false;
		}
		window.location="/product/search.html?key="+encodeURIComponent($.trim($pkey));
	})
})
$(document).on("click","#product_submit_search",function(){
	$pkey=$("#product_key_search").val();
	if($pkey==''){
		alert("请输入关键字进行搜索！");
		return false;
	}
	product_search($pkey);
})

function product_search(pkey){
	if (!checkSQL(pkey)) {
		alert("请不要包含危险字符！");
		window.location.href="../index.html";
		return false;
	}
	$.ajax({
		type: "POST",
		dataType: "html",
		url: '/index.php?a=public_product_search',
		data: {
			key:pkey
		},
		success: function (msg) {
			var obj = eval('(' + msg + ')');
			$("#product_ul").html(obj.ListHtml);
		}
	});
}

/*-----------------------------搜索结果绑定-------------------------------------------------------------------------*/
$(function () {
    $('#btnSearch').click(function () {
        search();
    });
    function search() {
        if ($.trim($("#formd_search_id").val()) == '' || $.trim($("#formd_search_id").val()) == "search...") {
            $('#formd_search_id').focus();
            alert("请输入关键词！");
            return false;
        }
        else {
            window.location = "/other/search.html?key=" + encodeURIComponent($.trim($("#formd_search_id").val()));
        }
    }
})

$(function () {
    $('#btnSearch1').click(function () {
        search1();
    });
    function search1() {
        if ($.trim($("#formd_search_id1").val()) == '' || $.trim($("#formd_search_id1").val()) == "search...") {
            $('#formd_search_id1').focus();
            alert("请输入关键词！");
            return false;
        }
        else {
            window.location = "/other/search.html?key=" + encodeURIComponent($.trim($("#formd_search_id1").val()));
        }
    }
})



//危险字符过滤
$(function () {
    $(document).on('keyup', 'input[type=text],textarea,input[type=password]', function () {
        var val = $(this).val().toLocaleLowerCase();
        var otherKey = " and | exec | count | chr | mid | master | or | truncate | char | declare | join |<|>|/*|*/|;|\\u|insert|select|delete|update|create|drop|script|javascript|alert";
        var goon = true;
        for (var i = 0; i < otherKey.split('|').length ; i++) {
            if (goon) {
                if (val.indexOf(otherKey.split('|')[i]) != -1) {
                    alert("不能包含危险字符!");
                    $(this).val('');
                    goon = false;
                    return;
                }
            }
        }
    });
})

function checkSQL(tempKey) {
    var val = tempKey;
    var otherKey = " and | exec | count | chr | mid | master | or | truncate | char | declare | join |<|>|*|/*|*/|;|\\u|insert|select|delete|update|create|drop|script|javascript|alert";
    var goon = true;
    for (var i = 0; i < otherKey.split('|').length ; i++) {
        if (goon) {
            if (val.indexOf(otherKey.split('|')[i]) != -1) {                
                goon = false;
            }
        }
    }
    return goon;
}


var classid = '';
var key = '';

var ToPage = function (pageIndex) {
	console.log(pageIndex);
	if (!checkSQL(key)) {
		alert("请不要包含危险字符！");
		window.location.href="../index.html";
		return false;
	}
	if(pageIndex==1){
		$("#AjaxList").html("");
	}
	var html_start=$("#html_start").val();
	var html_end=$("#html_end").val();
	var pageclass=$("#pageClass").val();
	var pagesize=$("#pagesize").val();
	var updatetime=$("#updatetime").val();
	var listhtml=$("#listhtml").val();
	var pagehtml=$("#pagehtml").val();
    $.ajax({
        type: "post",
        url: "../index.php?a=qwsearch",
        data: {
            pageindex: pageIndex,
            pagesize: pagesize,
            key: key,
			html_start: html_start,
			html_end: html_end,
			pageclass: pageclass,
			updatetime: updatetime,
			listhtml: listhtml,
			pagehtml: pagehtml
        },
        success: function (msg) {
            var obj = eval('(' + msg + ')');
            $('#AjaxList').html(obj.ListHtml.toString());
            $('#AjaxPageList').html(obj.PageHtml.toString());
            $('#searchNum').html(obj.RecordCount);
            $('#formd_search_id').val(key);
            $('#searchText').html('"'+key+'"');
			$('#formd_search_id1').val(key);
        }
    })
}

/*-----------------------------利用cookie保存浏览记录-------------------------------*/
function SetMyCollect(id,url,photo){
	$.ajax({
        type: "post",
        url: "../index.php?a=history",
        data: {
            id: id,
            url: url,
            photo: photo
        },
        success: function (msg) {
            
        }
    })	
}
/*-----------------------------获取浏览记录-------------------------------*/
function getMyCollect() {
    $.ajax({
        type: "post",
        url: "../index.php?a=gethistory",
        data:"",
        success: function (msg) {
            var obj = eval('(' + msg + ')');
            $('#GetMyCollect').html(obj.ListHtml);
            
        }
    })	
}

/*----------------------当前位置定位-------------------*/
$(function () {
    var MenuName = $.trim($("div.site>div.inwrap>a:eq(1)").text());
    $('.nav>ul>li>a').map(function () {
        if ($.trim($(this).text()) == MenuName) {
           $(this).parent().addClass('on').siblings().removeClass('on');
		   
        }
    });
	

    var MenuName = $.trim($("div.site>div.inwrap>a:eq(3)").text());
    $('.nav>ul>li>a').map(function () {
        if ($.trim($(this).text()) == MenuName) {
            $(this).parent().addClass('on').siblings().removeClass('on');

        }
    });

    var MenuName = $.trim($("div.site>div.inwrap>span").text());
    $('.nav>ul>li>a').map(function () {
        if ($.trim($(this).text()) == MenuName) {
           $(this).parent().addClass('on').siblings().removeClass('on');
		   
        }
    });
})

/*----------------------点击下载及时更新下载次数-------------------*/
$(document).on('click', '.Mylike', function () {
    var strid = $(this).attr("data-id");//ID
    var strurl =$(this).attr("data-url");
    var stremid = $(this).parents('.AForm').find('.Mylikelist');
    var objMylike = $(this);
    data = "id=" + strid;
	$.ajax({
        type: "post",
        url: "/index.php?a=downloadnum",
        data:data,
        success: function (msg) {
            var obj = eval('(' + msg + ')');
			if(obj.status==1){
            stremid.text(Number(stremid.text()) + Number(1));
            window.location = "" + strurl;
			}
        }
    })
});

/*----------------------获取下载次数-------------------*/
$(function () {
    var ids = '';
    $('.Mylikelist').map(function () {
        ids += $(this).attr('data-id') + ',';
    });
    if (ids.length == 0) {
        return;
    }
    data="ids="+ids;
	$.ajax({
        type: "post",
        url: "/index.php?a=getdownloadnum",
        data:data,
        success: function (msg) {
            var obj = eval('(' + msg + ')');
			var hits=(obj.info);
			for (var i = 0; i < hits.split(',').length; i++) {
	            $('.Mylikelist').eq(i).text(hits.split(',')[i]);
	        }
        }
    })
});
/*----------------------动态加载公共模板--------------------*/
function getAajaxInclude(dataUrl,element) {
	
	$.ajax({
		"type": "get",
		"url": "" + dataUrl+"",
		"datatype": "html",
		"success": function (msg) {
			$(element).html(msg);
		},
		"error": function (e) {
			
		}
	})
}

/*------------------文字转语音------------------------*/
$(".audio_btn").click(function () {
	var count = 0;
	var Timer = null;

	var target = $("#audiodiv audio:eq(" + count + ")").get(0);
	if (target.paused) {
		target.play();
		$(".audio_btn").addClass("pause");
	} else {
		target.pause();
		$(".audio_btn").removeClass("pause");
	}

	Timer = setInterval(function () {
		$("#audiodiv audio:eq(" + count + ")").get(0).onended = function () {
			$("#audiodiv audio:eq(" + count + ")").get(0).pause();
			count = count + 1;
			$("#audiodiv audio:eq(" + count + ")").get(0).play();
		};
		$("#audiodiv audio:last").get(0).onended = function () {
			$(".audio_btn").removeClass("pause");
		};

	}, 10)
})

$(document).on("click","#InitialsSearch li a",function(){
	$("#InitialsSearch li a").removeClass("on");
	$(this).addClass('on');
	szmsearch(1);
})
var isall=false;
$(document).on("click","#allsearch",function(){
	$("#InitialsSearch li a").removeClass("on");
	isall=true;
	szmsearch(1);
})

function szmsearch(pageindex){
	if(isall){
		var initials=$("#allsearch").attr("data-value");
	}else{
		var initials=$("#InitialsSearch li a.on").attr("data-value");
	}
	console.log(initials);
	var data="initials="+initials+"&pageindex="+pageindex;
	$.ajax({
        type: "post",
        url: "/index.php?a=starssearch",
        data:data,
        success: function (msg) {
            var obj = eval('(' + msg + ')');
			console.log(obj['datalist']);
			htmlList='';
			pageList='';
			if(obj['datalist']!=null){
				for(var i=0; i<obj['datalist'].length;i++){
					htmlList+='<li><a href="'+obj['datalist'][i]['url']+'" target="_blank"><div class="img ratio-img tran_scale" data-ratio="1.4008"><img src="'+obj['datalist'][i]['thumb']+'" onerror="lod(this)"></div><div class="txt"><h2><span class="fnt_24">'+obj['datalist'][i]['title']+'</span><em>'+obj['datalist'][i]['text3']+'</em></h2><p class="clamp">'+obj['datalist'][i]['description']+'</p><i></i></div></a></li>';
				}
				pageList='<div class="page"><div class="inner"><a href="javascript:szmsearch(' + obj['pagelist']['prev'] + ')" title="上一页" class="prev disable"><img src="/images/prev.png"></a>' + obj['pagelist']['list'] + '<a href="javascript:szmsearch(' + obj['pagelist']['next'] + ')" title="下一页" class="next"><img src="/images/next.png"></a><span>共<em>' + obj['pagelist']['pagecount'] + '</em>页</div></div>';				
			}else{
				htmlList='<li>抱歉，没有找到相关信息！</li>';
			}
			
			
			$("body").on("keydown","#public_jump",function (e) {
            var curKey = e.which; 
            if (curKey == 13) {
                public_jumpurl(); 
                return false;
            }})
            function public_jumpurl(){
                var num = document.getElementById('public_jump').value;
                if(!Number(num) && Number(num)!=0){alert('请输入数字');
                }else{
                    var re =/^[1-9]+[0-9]*]*$/;
                    if (!re.test(Number(num))){
                        alert('请输入正确的数字');
                        return false;
                    }if(Number(num) >obj.pagelist['pagecount']){
                        alert('输入的数字过大');
                        return false;
                    }
                    szmsearch(parseInt(document.getElementById('public_jump').value));
                    return false;
                }
            }
			$("#starsHtml").html(htmlList);
			$("#pageHtml").html(pageList);
			imgratio();
        }
    })
}

