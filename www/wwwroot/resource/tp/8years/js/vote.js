var award;
var goods;
var _invite_uid;
var invitedby="34319";
var invitedflag="1";
//获取邀请人ID
_invite_uid=getQueryParam("id");
//渠道
_invite_c=getQueryParam("c");

//添加邀请人参数
$(function(){
	if(_invite_uid!=null&&_invite_uid!=''){
		//将所有链接加上id参数
		$("a").each(function(i){
			var href=$(this).attr("href");
			if(href!=null&&href.indexOf('.htm')!=-1){
				if(href.indexOf('?')!=-1){
					$(this).attr("href",href+"&id="+_invite_uid);
				}else{
					$(this).attr("href",href+"?id="+_invite_uid);
				}
			}
		});
		//修改推荐人
		invitedby=_invite_uid;
   		invitedflag="kc";
	}else if(_invite_c!=null&&_invite_c!=''){
		//将所有链接加上id参数
		$("a").each(function(i){
			var href=$(this).attr("href");
			if(href!=null&&href.indexOf('.htm')!=-1){
				if(href.indexOf('?')!=-1){
					$(this).attr("href",href+"&c="+_invite_c);
				}else{
					$(this).attr("href",href+"?c="+_invite_c);
				}
			}
		});
		
		invitedby=_invite_c;
   		invitedflag="1";
	}
	
	
	//下载包管理
	if(invitedby==null||invitedby==''){
		invitedby=34319;
	}
	
	var down_invitedby=invitedby;
	if(invitedflag=='kc'){
		down_invitedby="34319";
	}
	$(".down_cpc").each(function(index){
		var href=$(this).attr('href');
		if(href.indexOf('?')!=-1){
			$(this).attr("href",href+"&c="+down_invitedby);
		}else{
			$(this).attr("href",href+"?c="+down_invitedby);
		}
	});
});


$(function() {
	$("#lotteryBtn").bind("click", vote);
});

function rotateFunc(awards, text,msg) {// awards:奖项，angle:奖项对应的角度
	$("#lotteryBtn").unbind("click");
	var angle = (8 - awards) * 45 + 22.5;
	$('#lotteryTurn').stopRotate();// 转盘复位
	$("#lotteryTurn").rotate({
		angle : 0,
		duration : 5000,
		animateTo : angle + 4320, // 2160=6圈。
		callback : function() {
			$.weeboxs.open('lottery_share.htm', {title :'获奖详情',contentType:'ajax',width : 400,showButton : false,
				onopen:function() {
					setLotterResult(text,msg);
				}
			});
			$("#lotteryBtn").bind("click", vote);
		}
	});
}


var goodslist='';
/**设置中奖奖品**/
function setLotterResult(good,msg){
	goodslist=goodslist+good+",";
	$("#success_result").html("恭喜您中奖了，获得：<span style='color:red'>"+good+"</span>");
	$("#tips_succ").children("p").last().html(msg);
	$("#lottery_contiune").hide();
	$("#success_share").hide();
	if(msg&&msg.indexOf('该奖券抽奖次数已用完')!=-1){
		$("#success_share").show();
   }else if(msg.indexOf('该奖券还有')!=-1){
       $("#lottery_contiune").show();
   }
}


/**获取中奖奖品**/
function getLotterResult(){
	   if(goodslist!=null&&goodslist.length>1)
		  return goodslist.substring(0,goodslist.length-1);
	   return goodslist;
}

/**继续抽奖**/
function lotteryContiune(){
	$.weeboxs.close('#success');
	var date = "brandid=kc&invitedby="+invitedby+"&invitedflag=" +invitedflag+ "&cdkey=" + cardNo;
	$.ajax({
		url : "vodeReward.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(txt) {
			if (txt.flag) {
				$.weeboxs.close('#receive');
				award = txt.msg;
				goods=txt.code;
				clickFunc(goods,award);
			} else {
				if(txt.code!=22){
					$("#message_tips").html(txt.msg);
				}
				
			}
		},
		error : function() {
			alert("领取失败,请稍后再试");
		}
	});
}





/**填充中奖数据**/
function wrapawrdinfo(awardlist){
	   if(awardlist){
		   var awardul=$("#awardlist");
		   awardul.html("");
		   for(var i=0;i<awardlist.length;i++){
			   var phone=awardlist[i].phone;
			   var goods=awardlist[i].goods_desc;
			   var info=phone+"这位同学，眼疾手快获得"+goods;
			   //手机做特殊处理
			   if(goods&&goods.indexOf("iphone5")!=-1||goods.indexOf("手机")!=-1)
				   info+="，<span>眼红了吗?<span>";
			   awardul.append("<li>" +info+"</li>");
		   }
	   }
}


// 信息输入框
function vote() {
	$.weeboxs.open('#receive', {
		title : '提示',
		width : 360,
		showButton : false
	});
	placeholderinit();
}

// 抽奖
function reward() {
	if (!checkCdKey()) {
		return;
	}
	var date = "brandid=kc&invitedby="+invitedby+"&invitedflag=" +invitedflag+ "&cdkey=" + cardNo;
	$.ajax({
		url : "vodeReward.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(txt) {
			if (txt.flag) {
				$.weeboxs.close('#receive');
				award = txt.msg;
				goods=txt.code;
				clickFunc(goods,award);
			} else {
				if(txt.code!=22){
					$("#message_tips").html(txt.msg);
				}
				
			}
		},
		error : function() {
			alert("领取失败,请稍后再试");
		}
	});
};

var phoneNo;
var cardNo;
function checkCdKey() {
	cardNo = $("#cardNo").val();
	$("#message_tips").html("");
	if (!cardNo) {
		$("#message_tips").html("请输入您的奖券");
		$("#cardNo").focus();
		return;
	}
	return true;
}

function clickFunc(goods,award) {
	// 从服务器端返回,正上方顺时针方向的奖项
	if (goods == 1) {
		rotateFunc(1, '苹果iphone5s',award);
	}
	if (goods == 141) {
		rotateFunc(2, '10元话费',award);
	}
	if (goods == 3) {
		rotateFunc(3, '金箔手机',award);
	}
	if (goods == 4) {
		rotateFunc(4, '100元话费',award);
	}
	if (goods == 5) {
		rotateFunc(5, '苹果iphone5s',award);
	}
	if (goods == 140) {
		rotateFunc(6, '5元话费',award);
	}
	if (goods == 7) {
		rotateFunc(7, '金铂手机',award);
	}
	if (goods == 138) {
		rotateFunc(8, '1元话费',award);
	}
	if (goods == -1) {
		alert('您的奖券已用完',award);
	}
}

function isNumbers(str) {
	var regNum = /^\d*$/;
	return regNum.test(str);
}

function isEmail(str) {
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return filter.test(str);
}

function isMobel(value) {
	if (/^182\d{8}$/g.test(value) || (/^147\d{8}$/g.test(value))
			|| /^13\d{9}$/g.test(value) || (/^15[0-35-9]\d{8}$/g.test(value))
			|| (/^18[01-9]\d{8}$/g.test(value))) {
		return true;
	} else {
		return false;
	}
}

// 邀请
function on_make() {
	var uid = $("#mobileNo").val();
	if ((isNumbers(uid) && uid.length >= 5 && uid.length <= 12) || isEmail(uid)
			|| isMobel(uid)) {
		$('#invite_url').val("http://www.keepc.com/voip/?t=kc&id=" + uid);
	} else {
		alert("您输入的账号不正确，请重新输入！");
		$('#mobileNo').focus();
	}
}

//邀请排名
$("#on_invited").click(
		function(){
       var phone=$("#mobileNo").val();
       if (!phone) {
   		alert("请输入手机号");
   		$("#rank_phone").focus();
   		return;
   	}
   	if (!isMobel(phone)) {
   		alert("请输入格式正确的手机号");
   		$("#rank_phone").focus();
   		return;
   	}
   	var date = "brandid=kc&invitedby="+invitedby+"&invitedflag="+invitedflag+"&phone="+phone;
   	$.ajax({
		url : "showInviteRank.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(data) {
			inviteResult(data);
		},
		error : function() {
			alert("提交失败,请稍后再试");
		}
	});
});

var _invite_uid_share;
function  inviteResult(data){
	var  number="0";
	var score="0";
	var rank="无";
	if (data!=null&&data.result==0) {
		number=data.score;
		score=data.score;
		rank=data.rank;
	}
	_invite_uid_share=data._uid;
	//$("#invite_result").children("p:first").children("strong:first").html($("#mobileNo").val());
	$("#invite_url").html("http://a.keepc.com/p?id="+_invite_uid_share);
	$("#invite_result_rank").html(rank);
	$("#invite_result_number").html(number);
	$("#invite_result_score").html(score);
	
	$("#invite_enter").hide();
	$("#invite_result").show();
}


//金创意
function copysuccess() {
	$.weeboxs.open('#copysuccess', {
		title : '提示',
		width : 360,
		showButton : false
	});
}

// 金创意
function publishIdea() {
	$.weeboxs.open('#idea_publish', {
		title : '提示',
		width : 575,
		showButton : false
	});
}

var title = $("#w_input").val();
var content = $("#w_textarea").val();
function publishRank(){
	title = $("#w_input").val();
	content = $("#w_textarea").val();
	if (!title) {
		$("#messages").html("标题不能为空!");
		$("#w_input").focus();
		return;
	}
	if (title.length > 40) {
		$("#messages").html("标题字数不能超过40个");
		$("#w_input").focus();
		return;
	}
	if (!content) {
		$("#messages").html("内容不能为空!");
		$("#w_textarea").focus();
		return;
	}
	if (content.length > 300) {
		$("#messages").html("内容字数不能超过300个");
		$("#w_textarea").focus();
		return;
	}
	$.weeboxs.close('#idea_publish');
	$.weeboxs.open('#votedsuccess', {
		title : '提示',
		width : 450,
		showButton : false
	});
	placeholderinit();
}



function submit_rank() {
	var phone = $("#Mobile").val();
	var Code = $("#c_code").val();
	 if (!phone) {
	   		$("#msg_tis").html("请输入手机号");
	   		$("#Mobile").focus();
	   		return;
	   	}
	   	if (!isMobel(phone)) {
	   		$("#msg_tis").html("请输入格式正确的手机号");
	   		$("#Mobile").focus();
	   		return;
	   	}
	    if (!Code) {
	   		$("#msg_tis").html("请输入验证码");
	   		$("#a_code").focus();
	   		return;
	   	}	
	var date = "brandid=kc&phone="+phone + "&title=" +title+ "&yanCode=" +Code + "&content="
			+ content+"&invitedby="+invitedby+"&invitedflag=" +invitedflag;
	$.ajax({
		url : "publishIdea.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(txt) {
			$.weeboxs.close('#votedsuccess');
			if (txt.flag) {
				$("#votedsuccess_msg_title").html("奖券领取成功！");
				$("#votedsuccess_msg_content").html("奖券已发送到您的手机号码，请注意查收短信。");
			} else {
				$("#votedsuccess_msg_title").html("奖券领取失败！");
				$("#votedsuccess_msg_content").html("该手机号已领取创意奖券，不要太贪心哦。");
			}
			
			$.weeboxs.open('#votedsuccess_msg', {
				title : '提示',
				width : 380,
				showButton : false
			});
		},
		error : function() {
			alert("提交失败,请稍后再试");
		}
	});

}

// 投票
function voteIdea(idea_id) {
	$("#voted_id").val(idea_id);
	$.weeboxs.open('#voted_idea', {
		title : '提示',
		width : 380,
		showButton : false
	});
	placeholderinit();
}

function idea_vote() {
	var idea_id = $("#voted_id").val();
	var mobile = $("#mobile").val();
	var yanCode = $("#yan_code").val();
	 if (!mobile) {
	   		$("#message").html("请输入手机号");
	   		$("#mobile").focus();
	   		return;
	   	}
	   	if (!isMobel(mobile)) {
	   		$("#message").html("请输入格式正确的手机号");
	   		$("#mobile").focus();
	   		return;
	   	}
	    if (!yanCode) {
	   		$("#message").html("请输入验证码");
	   		$("#yan_code").focus();
	   		return;
	   	}	
	var date = "brandid=kc&phone=" + mobile + "&idea_id=" + idea_id
			+ "&yanCode=" + yanCode+"&invitedby="+invitedby+"&invitedflag=" +invitedflag+"&type=y";
	$.ajax({
		url : "voteIdea.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(txt) {
			if (txt.flag||txt.code==21) {
				if(txt.flag){
					$("#votesuccess_button").html("去抽奖");
					$("#votesuccess_button").attr("href","./index.htm");
					$("#votesuccess_msg_title").html("奖券领取成功！");
					$("#votesuccess_msg").html("奖券已经发送到您的手机号，请注意查收短信");
					$("#votesuccess_msg2").html("还没有写创意？去写创意");
					$("#votesuccess_msg2").attr("href","#div_push");//写创意
				}
				else{
					$("#votesuccess_button").html("去写创意");
					$("#votesuccess_button").attr("href","#div_push");
					$("#votesuccess_msg_title").html("奖券领取失败！");
					$("#votesuccess_msg").html("该手机号已领取过奖券，不能重复领取");
					$("#votesuccess_msg2").html("了解更多获得奖券方式");
					$("#votesuccess_msg2").attr("href","./index.htm#moretype");//首页的
				}
				$.weeboxs.close('#voted_idea');
				$.weeboxs.open('#votesuccess', {
					title : '提示',
					width : 380,
					showButton : false
				});
				placeholderinit();
			} else if(txt.code!=22){
				$("#message").html(txt.msg);
			}
		},
		error : function() {
			alert("提交失败,请稍后再试");
		}
	});

}





//我踩窗口
function stampVoteIdea(idea_id) {
	$("#stamp_voted_id").val(idea_id);
	$.weeboxs.open('#stamp_voted_idea', {
		title : '提示',
		width : 380,
		showButton : false
	});
	placeholderinit();
}
//我踩功能实现
function stamp_idea_vote() {
	var idea_id = $("#stamp_voted_id").val();
	var mobile = $("#stamp_mobile").val();
	var yanCode = $("#stamp_yan_code").val();
	 if (!mobile) {
	   		$("#stamp_message").html("请输入手机号");
	   		$("#stamp_mobile").focus();
	   		return;
	   	}
	   	if (!isMobel(mobile)) {
	   		$("#stamp_message").html("请输入格式正确的手机号");
	   		$("#stamp_mobile").focus();
	   		return;
	   	}
	    if (!yanCode) {
	   		$("#stamp_message").html("请输入验证码");
	   		$("#stamp_yan_code").focus();
	   		return;
	   	}	
	var date = "brandid=kc&phone=" + mobile + "&idea_id=" + idea_id
			+ "&yanCode=" + yanCode+"&invitedby="+invitedby+"&invitedflag=" +invitedflag+"&type=n";
	$.ajax({
		url : "voteIdea.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(txt) {
			if (txt.flag||txt.code==21) {
				if(txt.flag){
					$("#stamp_votesuccess_title").html("奖券领取成功！");
					$("#stamp_votesuccess_msg").html("奖券已经发送到您的手机号，请注意查收短信");
				}else{
					$("#stamp_votesuccess_title").html("奖券领取失败！");
					$("#stamp_votesuccess_msg").html("领取失败，该手机号已领取过奖券，不能重复领取");
				}
					
				$.weeboxs.close('#stamp_voted_idea');
				$.weeboxs.open('#stamp_votesuccess', {
					title : '提示',
					width : 380,
					showButton : false
				});
			} else if(txt.code!=22){
				$("#stamp_message").html(txt.msg);
			}
		},
		error : function() {
			alert("提交失败,请稍后再试");
		}
	});

}
//我踩验证码切换
function stamp_changeCode() {
	var rand = "?" + Math.random();
	$('#stamp_m_yan').attr("src", '/sc.cgi' + rand);
}

function changeCode() {
	var rand = "?" + Math.random();
	$('#m_yan').attr("src", '/sc.cgi' + rand);
}
function changecode() {
	var rand = "?" + Math.random();
	$('#a_yan').attr("src", '/sc.cgi' + rand);
}

// 查创意排名
function rank(){
    var phone=$("#rank_phone").val();
    if (!phone) {
    	quaryRankFail('请输入手机号');
   		$("#rank_phone").focus();
   		return;
   	}
   	if (!isMobel(phone)) {
   		quaryRankFail('请输入格式正确的手机号');
   		$("#rank_phone").focus();
   		return;
   	}
   	var date = "brandid=kc&phone="+phone;
   	$.ajax({
		url : "showRank.act",
		type : 'POST',
		dataType : 'json',
		data : date,
		success : function(data) {
			if (data!=null&&data.result==0) {
				$("#notpass_idea").hide();
				$("#vote_rank").children("div").children("div").children("p").first().children("em").first().html( data.score);
				$("#vote_rank").children("div").children("div").children("p").first().children("em").first().next().html(data.vote_count);
				$("#vote_rank").children("div").children("div").children("p").last().children("em").last().html(data.rank);
				$.weeboxs.open('#vote_rank', {
					title : '提示',
					width : 360,
					showButton : false
				});
				placeholderinit();
			} else {
				if(data.result==11){
						quaryRankFail('对不起，未找到与之匹配的帖子，您可以重新查找');
				}else if(data.result==19){
					    $("#notpass_idea").show();
						$("#vote_rank").children("div").children("div").children("p").first().children("em").first().html( data.score);
						$("#vote_rank").children("div").children("div").children("p").first().children("em").first().next().html(data.vote_count);
						$("#vote_rank").children("div").children("div").children("p").last().children("em").last().html(data.rank);
						
						$.weeboxs.open('#vote_rank', {
							title : '提示',
							width : 360,
							showButton : false
						});
						placeholderinit();
						//quaryRankFail('对不起，您发表的创意还未审核，请耐心等待');
				}else if(data.result==20){
						quaryRankFail('对不起，您发表的创意未通过审核');
				}else{
					quaryRankFail(data.reason);
				}
			}
		},
		error : function() {
			alert("提交失败,请稍后再试");
		}
	});
}

function quaryRankFail(data){
	$("#voted_failed").children("div").children("div").children("p").html(data);
	$.weeboxs.open('#voted_failed', {
		title : '提示',
		width : 360,
		showButton : false
	});
};


//滚动特效
function autoScroll(obj){  
    $(obj).find(".news_list").animate({  
        marginTop : "-25px"  
    },500,function(){  
        $(this).css({marginTop : "0px"}).find("li:first").appendTo(this);  
    })  ;
}  
$(function(){  
    setInterval('autoScroll(".more_info_title")',3000);
})  ;


 function regFocus(){
	  $("#invite_url").focus();
 }





function getQueryParam(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return unescape(r[2]);
	return null;
}





