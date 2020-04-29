//注册－填写身份信息 上传
var reg_info_file=document.getElementById("reg_info_file");
var headimg=document.getElementById("headimg");
var planimg1=document.getElementById("planimg1");
var planimg2=document.getElementById("planimg2");
var inter1=document.getElementById("inter1");
var inter2=document.getElementById("inter2");
var inter3=document.getElementById("inter3");
var inter4=document.getElementById("inter4");
var inter5=document.getElementById("inter5");
var inter6=document.getElementById("inter6");

//动态加载头像图
headimg.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = headimg.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#headimg_text").hide();
		}else{
			$("#headimg_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#headimg_text").hide();
		}else{
			$("#headimg_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#headimg_base64").removeAttr("width");
		$("#headimg_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#headimg_w").hide();
			$("#headimg_base64").show();
			$("#headimg_base64").attr("src",e.target.result);
			$("#headimg_base64")[0].onload=function(){
				var upimgw=$("#headimg_base64").width();
				var upimgh=$("#headimg_base64").height();
				$("#headimg_base64").attr("width",imgPercentScale(240,180,upimgw,upimgh).w);
				$("#headimg_base64").attr("height",imgPercentScale(240,180,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#headimg_w").hide();
		$("#headimg_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#headimg_base64")[0].src=src;
		$("#headimg_base64")[0].onload=function(){
			var upimgw=$("#headimg_base64").width();
			var upimgh=$("#headimg_base64").height();
			$("#headimg_base64").attr("width",imgPercentScale(240,180,upimgw,upimgh).w);
			$("#headimg_base64").attr("height",imgPercentScale(240,180,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};
//动态加载平面图
planimg1.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = planimg1.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#planimg1_text").hide();
		}else{
			$("#planimg1_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#planimg1_text").hide();
		}else{
			$("#planimg1_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#planimg1_base64").removeAttr("width");
		$("#planimg1_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#planimg1_w").hide();
			$("#planimg1_base64").show();
			$("#planimg1_base64").attr("src",e.target.result);
			$("#planimg1_base64")[0].onload=function(){
				var upimgw=$("#planimg1_base64").width();
				var upimgh=$("#planimg1_base64").height();
				$("#planimg1_base64").attr("width",imgPercentScale(180,135,upimgw,upimgh).w);
				$("#planimg1_base64").attr("height",imgPercentScale(180,135,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#planimg1_w").hide();
		$("#planimg1_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#planimg1_base64")[0].src=src;
		$("#planimg1_base64")[0].onload=function(){
			var upimgw=$("#planimg1_base64").width();
			var upimgh=$("#planimg1_base64").height();
			$("#planimg1_base64").attr("width",imgPercentScale(180,135,upimgw,upimgh).w);
			$("#planimg1_base64").attr("height",imgPercentScale(180,135,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};
planimg2.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = planimg2.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#planimg2_text").hide();
		}else{
			$("#planimg2_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#planimg2_text").hide();
		}else{
			$("#planimg2_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#planimg2_base64").removeAttr("width");
		$("#planimg2_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#planimg2_w").hide();
			$("#planimg2_base64").show();
			$("#planimg2_base64").attr("src",e.target.result);
			$("#planimg2_base64")[0].onload=function(){
				var upimgw=$("#planimg2_base64").width();
				var upimgh=$("#planimg2_base64").height();
				$("#planimg2_base64").attr("width",imgPercentScale(180,135,upimgw,upimgh).w);
				$("#planimg2_base64").attr("height",imgPercentScale(180,138,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#planimg2_w").hide();
		$("#planimg2_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#planimg2_base64")[0].src=src;
		$("#planimg2_base64")[0].onload=function(){
			var upimgw=$("#planimg2_base64").width();
			var upimgh=$("#planimg2_base64").height();
			$("#planimg2_base64").attr("width",imgPercentScale(180,135,upimgw,upimgh).w);
			$("#planimg2_base64").attr("height",imgPercentScale(180,135,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};
//六张室内图
//第一张
inter1.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = inter1.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#inter1_text").hide();
		}else{
			$("#inter1_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#inter1_text").hide();
		}else{
			$("#inter1_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#inter1_base64").removeAttr("width");
		$("#inter1_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#inter1_w").hide();
			$("#inter1_base64").show();
			$("#inter1_base64").attr("src",e.target.result);
			$("#inter1_base64")[0].onload=function(){
				var upimgw=$("#inter1_base64").width();
				var upimgh=$("#inter1_base64").height();
				$("#inter1_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
				$("#inter1_base64").attr("height",imgPercentScale(118,90,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#inter1_w").hide();
		$("#inter1_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#inter1_base64")[0].src=src;
		$("#inter1_base64")[0].onload=function(){
			var upimgw=$("#inter1_base64").width();
			var upimgh=$("#inter1_base64").height();
			$("#inter1_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
			$("#inter1_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};
//第二张
inter2.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = inter2.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#inter2_text").hide();
		}else{
			$("#inter2_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#inter2_text").hide();
		}else{
			$("#inter2_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#inter2_base64").removeAttr("width");
		$("#inter2_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#inter2_w").hide();
			$("#inter2_base64").show();
			$("#inter2_base64").attr("src",e.target.result);
			$("#inter2_base64")[0].onload=function(){
				var upimgw=$("#inter2_base64").width();
				var upimgh=$("#inter2_base64").height();
				$("#inter2_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
				$("#inter2_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#inter2_w").hide();
		$("#inter2_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#inter2_base64")[0].src=src;
		$("#inter2_base64")[0].onload=function(){
			var upimgw=$("#inter2_base64").width();
			var upimgh=$("#inter2_base64").height();
			$("#inter2_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
			$("#inter2_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};
//第三张
inter3.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = inter3.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#inter3_text").hide();
		}else{
			$("#inter3_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#inter3_text").hide();
		}else{
			$("#inter3_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#inter3_base64").removeAttr("width");
		$("#inter3_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#inter3_w").hide();
			$("#inter3_base64").show();
			$("#inter3_base64").attr("src",e.target.result);
			$("#inter3_base64")[0].onload=function(){
				var upimgw=$("#inter3_base64").width();
				var upimgh=$("#inter3_base64").height();
				$("#inter3_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
				$("#inter3_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#inter3_w").hide();
		$("#inter3_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#inter3_base64")[0].src=src;
		$("#inter3_base64")[0].onload=function(){
			var upimgw=$("#inter3_base64").width();
			var upimgh=$("#inter3_base64").height();
			$("#inter3_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
			$("#inter3_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};

//第四张
inter4.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = inter4.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#inter4_text").hide();
		}else{
			$("#inter4_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#inter4_text").hide();
		}else{
			$("#inter4_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#inter4_base64").removeAttr("width");
		$("#inter4_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#inter4_w").hide();
			$("#inter4_base64").show();
			$("#inter4_base64").attr("src",e.target.result);
			$("#inter4_base64")[0].onload=function(){
				var upimgw=$("#inter4_base64").width();
				var upimgh=$("#inter4_base64").height();
				$("#inter4_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
				$("#inter4_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#inter4_w").hide();
		$("#inter4_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#inter4_base64")[0].src=src;
		$("#inter4_base64")[0].onload=function(){
			var upimgw=$("#inter4_base64").width();
			var upimgh=$("#inter4_base64").height();
			$("#inter4_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
			$("#inter4_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};

//第五张

inter5.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = inter5.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#inter5_text").hide();
		}else{
			$("#inter5_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#inter5_text").hide();
		}else{
			$("#inter5_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#inter5_base64").removeAttr("width");
		$("#inter5_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#inter5_w").hide();
			$("#inter5_base64").show();
			$("#inter5_base64").attr("src",e.target.result);
			$("#inter5_base64")[0].onload=function(){
				var upimgw=$("#inter5_base64").width();
				var upimgh=$("#inter5_base64").height();
				$("#inter5_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
				$("#inter5_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#inter5_w").hide();
		$("#inter5_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#inter5_base64")[0].src=src;
		$("#inter5_base64")[0].onload=function(){
			var upimgw=$("#inter5_base64").width();
			var upimgh=$("#inter5_base64").height();
			$("#inter5_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
			$("#inter5_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};

//第6张

inter6.onchange=function(){
	if(window.FileReader){//ie10 ie10+ w3c
		var file = inter6.files[0];
		//console.log(file.size);
		//console.log(file.type);
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#inter6_text").hide();
		}else{
			$("#inter6_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#inter6_text").hide();
		}else{
			$("#inter6_text").html('图片大小不超过2M').show();
			return false;
		};

		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#inter6_base64").removeAttr("width");
		$("#inter6_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#inter6_w").hide();
			$("#inter6_base64").show();
			$("#inter6_base64").attr("src",e.target.result);
			$("#inter6_base64")[0].onload=function(){
				var upimgw=$("#inter6_base64").width();
				var upimgh=$("#inter6_base64").height();
				$("#inter6_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
				$("#inter6_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
			};
		};
	}else{		//ie9-
		$("#inter6_w").hide();
		$("#inter6_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		$("#inter6_base64")[0].src=src;
		$("#inter6_base64")[0].onload=function(){
			var upimgw=$("#inter6_base64").width();
			var upimgh=$("#inter6_base64").height();
			$("#inter6_base64").attr("width",imgPercentScale(115,90,upimgw,upimgh).w);
			$("#inter6_base64").attr("height",imgPercentScale(115,90,upimgw,upimgh).h);
		};
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};



reg_info_file.onchange=function(){    		
	if(window.FileReader){//ie10 ie10+ w3c
		var file = reg_info_file.files[0];
		//console.log(file.size);
		//console.log(file.type);			
		if(/(image\/jpeg)|(image\/png)/.test(file.type)){
			$("#reg_info_file_text").hide();
		}else{
			$("#reg_info_file_text").html('支持图片格式JPG/PNG').show();
			return false;
		};
		if(file.size<2*1024*1024){
			$("#reg_info_file_text").hide();
		}else{
			$("#reg_info_file_text").html('图片大小不超过2M').show();
			return false;
		};		
	
		var fr = new FileReader();
		fr.readAsDataURL(file);
		$("#reg_info_file_base64").removeAttr("width");
		$("#reg_info_file_base64").removeAttr("height");
		fr.onloadend = function(e) {
			$("#reg_info_file_w").hide();
			$("#reg_info_file_base64").show();
			$("#reg_info_file_base64").attr("src",e.target.result);						
			$("#reg_info_file_base64")[0].onload=function(){
				var upimgw=$("#reg_info_file_base64").width();
				var upimgh=$("#reg_info_file_base64").height();
				$("#reg_info_file_base64").attr("width",imgPercentScale(240,180,upimgw,upimgh).w);
				$("#reg_info_file_base64").attr("height",imgPercentScale(240,180,upimgw,upimgh).h);
			};						
		};				
	}else{		//ie9-	
		$("#reg_info_file_w").hide();
		$("#reg_info_file_base64").show();
		var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		reg_info_file.select();
		reg_info_file.blur();
		var src = document.selection.createRange().text;
		//$("#reg_info_file_base64")[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;		
		$("#reg_info_file_base64")[0].src=src;
		$("#reg_info_file_base64")[0].onload=function(){
			var upimgw=$("#reg_info_file_base64").width();
			var upimgh=$("#reg_info_file_base64").height();
			$("#reg_info_file_base64").attr("width",imgPercentScale(240,180,upimgw,upimgh).w);
			$("#reg_info_file_base64").attr("height",imgPercentScale(240,180,upimgw,upimgh).h);
		};			
		alert("名片上传不被浏览器支持，请更换浏览器打开网站");
	};
};
//date: 2016-12-5 author: 杜关兴 note: 图片比例缩放算法
/*
	boxw:容器宽度
	boxh:容器高度
	imgw:图片宽度
	imgh:图片高度
*/
function imgPercentScale(boxw,boxh,imgw,imgh){
	var res={};
	var wper=imgw/boxw;
	var hper=imgh/boxh;
	if(wper<=1 && hper<1){
		res.w=imgw;
		res.h=imgh;
		return res;
	};
	if(wper>1 && hper<1){
		res.w=boxw;
		var rhper=boxw/imgw;
		res.h=imgh*rhper;
		return res;
	};
	if(wper<=1 && hper>1){
		res.h=boxh;
		var rwper=boxh/imgh;
		res.w=imgw*rwper;
		return res;
	};
	if(wper>1 && hper>1){
		if(wper>=hper){
			res.w=boxw;
			var rhper=boxw/imgw;
			res.h=imgh*rhper;
			return res;
		}else{
			res.h=boxh;
			var rwper=boxh/imgh;
			res.w=imgw*rwper;
			return res;
		};
	};	
};