var t
var slideDelay = 7000;
var holderWidth
var thumbWidth = 144
$(document).ready(function(){
	jQuery.preLoadImages(
		"http://www.gallery88.com.au/floorplans/apartment-1.png",
		"http://www.gallery88.com.au/floorplans/apartment-2.png",
		"http://www.gallery88.com.au/floorplans/apartment-3.png",
		"http://www.gallery88.com.au/floorplans/apartment-4.png",
		"http://www.gallery88.com.au/floorplans/apartment-5.png",
		"http://www.gallery88.com.au/floorplans/apartment-6.png",
		"http://www.gallery88.com.au/floorplans/apartment-7.png",
		"http://www.gallery88.com.au/floorplans/apartment-8.png"
	);
	
	
	//Initialise the viewfinder size
	initViewfinder();
	viewfinderResize();
	//Initialise Resize Rotator Images
	//Needs to run twice
	imgResize();
	imgResize();
	//Initialise Image Centering
	var s=setTimeout("centerGallery();", 1);
	//Gallery Thumbs controls
	//Click on a thumb to see it
	$(".gallery-thumbs LI").click(function(){
		var thisSlide = "#"+($(this).attr("class"))
		rotateNow(thisSlide);
	});
	$(".scroll-right").click(function(){scrollRight();});
	$(".scroll-left").click(function(){scrollLeft();});
	//Homepage controls
	//Click on a box to see the image associated with it
	$(".hp-controls LI").click(function(){
		var thisSlide = "#"+($(this).attr("class"))
		rotateNow(thisSlide);
	});
	//Pause when Hovering over
	/*$(".gallery-viewfinder").hover(function(){
		clearTimeout(t);
	},function(){
		autoRotate();
	});*/
	$(".scroll-left").addClass("inactive");
});

function initViewfinder(){
	$(".gallery-viewfinder").each(function(){
		$(this).children("UL").children("LI:first").addClass("first");
		$(this).children("UL").children("LI:last").addClass("last");
		var countSlides = $(this).children("UL").children("LI").length
		var i = 1
		$(this).children("UL").children("LI").each(function(){
			var slideID = "slide"+i
			$(this).attr("id", slideID);
			var newGalleryThumb = '<li class="'+slideID+'"><img src="'+$(this).children("IMG").attr('src')+'" width="136"/></li>'
			$(".gallery-thumbs UL").append(newGalleryThumb);
			var newHpThumb = '<li class="'+slideID+'">'+slideID+'</li>'
			$("UL.hp-controls").append(newHpThumb);
			i++;
		});
		$(".slide1").addClass("selected");
	});
	var countThumbs = $(".gallery-thumbs .mask UL LI").length
	holderWidth = countThumbs*thumbWidth
	$(".gallery-thumbs .mask UL").width(holderWidth);
	var dontRotate = false
	if ($(".gallery-viewfinder").hasClass("dont-rotate")){dontRotate = true}
	if (dontRotate == false){t = setTimeout("autoRotate();",slideDelay);}
}

$(window).bind("resize", function(){
	viewfinderResize();
	imgResize();
	imgResize();
	centerGallery();
});

function imgResize(){
	var thisImg = ".gallery-viewfinder .current IMG"
	var allImgs = ".gallery-viewfinder IMG"
	var floorplan = false
	if ($("BODY").hasClass("floorplan")){floorplan = true}
	var windowWidth = $(window).width()
	if (floorplan==true){
		var windowHeight = $(window).height()
	}else{
		var windowHeight = $(window).height() - 200
	}
	var imgWidth = $(thisImg).width()
	var imgHeight = $(thisImg).height()
	var ratio = imgWidth / imgHeight;
	if (floorplan==false){
		if ((imgWidth >= windowWidth) && (imgHeight <= windowHeight)){
			$(allImgs).css("height", windowHeight);
			$(allImgs).css("width", (windowHeight * ratio));
		}else if ((imgWidth >= windowWidth) && (imgHeight >= windowHeight)){
			$(allImgs).css("width", windowWidth);
			$(allImgs).css("height", (windowWidth / ratio));
		}else if ((imgWidth <= windowWidth) && (imgHeight >= windowHeight)){
			$(allImgs).css("width", windowWidth);
			$(allImgs).css("height", (windowWidth / ratio));
		}else if ((imgWidth <= windowWidth) && (imgHeight <= windowHeight)){
			$(allImgs).css("width", windowWidth);
			$(allImgs).css("height", (windowWidth / ratio));
		}
	} else {
		if ((imgWidth >= windowWidth) && (imgHeight <= windowHeight)){
			//$(allImgs).css("height", windowHeight);
			//$(allImgs).css("width", (windowHeight * ratio));
			$(allImgs).css("width", windowWidth);
			$(allImgs).css("height", (windowWidth / ratio));
			
		}else if ((imgWidth >= windowWidth) && (imgHeight >= windowHeight)){
			$(allImgs).css("height", windowHeight);
			$(allImgs).css("width", (windowHeight * ratio));
		}else if ((imgWidth <= windowWidth) && (imgHeight >= windowHeight)){
			$(allImgs).css("height", windowHeight);
			$(allImgs).css("width", (windowHeight * ratio));
		}else if ((imgWidth <= windowWidth) && (imgHeight <= windowHeight)){
			$(allImgs).css("height", windowHeight);
			$(allImgs).css("width", (windowHeight * ratio));
		}
	}
}

function viewfinderResize(){
	var floorplan = false
	if ($("BODY").hasClass("floorplan")){floorplan = true}
	var windowWidth = $(window).width() - 32
	$(".gallery-viewfinder").width(windowWidth);
	if (floorplan==true){var windowHeight = $(window).height() - 32}else{var windowHeight = $(window).height() - 216}
	$(".gallery-viewfinder").height(windowHeight);
}

function centerGallery() {
	var vDisplacement = (($(".gallery-viewfinder").height())-($(".gallery-viewfinder LI").height()))/2
	var hDisplacement = (($(".gallery-viewfinder").width())-($(".gallery-viewfinder LI").width()))/2
	$(".gallery-viewfinder UL").css("top", vDisplacement);
	$(".gallery-viewfinder UL").css("left", hDisplacement);
}

function autoRotate(){
	clearTimeout(t);
	var currSlide = ".current"
	var nextSlide
	if ($(currSlide).hasClass("last")){
		var nextSlide ="#slide1"
	}else{
		var nextSlide = $(currSlide).next();
	}
	controlHighlight(nextSlide);
	$(currSlide).fadeOut(1000, function(){
		$(currSlide).removeClass("current");
		$(nextSlide).addClass("current");
		$(nextSlide).removeClass("next");
		if ($(nextSlide).hasClass("last")){
			$("#slide1").addClass("next");
		}else{
			$(nextSlide).next().addClass("next");
		}
		$(this).show();
		t = setTimeout("autoRotate();",slideDelay);
	});
}

function rotateNow(nextSlide){
	clearTimeout(t);
	var currSlide = ".current"
	$(".next").removeClass("next");
	$(nextSlide).addClass("next");
	controlHighlight(nextSlide);
	$(currSlide).fadeOut(500, function(){
		$(currSlide).show().removeClass("current");
		$(nextSlide).addClass("current");
		$(nextSlide).removeClass("next");
		
		if ($(nextSlide).hasClass("last")){
			$("#slide1").addClass("next");
		}else{
			$(nextSlide).next().addClass("next");
		}
		$(this).show();
		t = setTimeout("autoRotate();",slideDelay);
	});
}

function controlHighlight(nextSlide){
	$(".hp-controls .selected").removeClass("selected");
	$(".gallery-thumbs .selected").removeClass("selected");
	var controlHighlightID = "LI."+$(nextSlide).attr("id")
	$(controlHighlightID).addClass("selected");
}

function scrollRight(){
	$(".scroll-left").removeClass("inactive");
	var currPos = parseFloat($(".gallery-thumbs UL").css("left"));
	var newPos = currPos - 144
	var maxPos = (holderWidth-(thumbWidth*3))*-1
	if (newPos<=maxPos){
		newPos=maxPos
		$(".scroll-right").addClass("inactive");
	}
	$(".gallery-thumbs UL").animate({"left":newPos}, "fast");
}

function scrollLeft(){
	$(".scroll-right").removeClass("inactive");
	var currPos = parseFloat($(".gallery-thumbs UL").css("left"));
	var newPos = currPos + 144
	var maxPos = 0
	if (newPos>=maxPos){
		newPos=maxPos
		$(".scroll-left").addClass("inactive");
	}
	$(".gallery-thumbs UL").animate({"left":newPos}, "fast");
}

(function($) {
  var cache = [];
  // Arguments are image paths relative to the current page.
  $.preLoadImages = function() {
    var args_len = arguments.length;
    for (var i = args_len; i--;) {
      var cacheImage = document.createElement('img');
      cacheImage.src = arguments[i];
      cache.push(cacheImage);
    }
  }
})(jQuery)
