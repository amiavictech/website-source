// Begin XHTML adjustment
$(document).ready(function(){
	if (jQuery.browser.msie && jQuery.browser.version.substr(0, 2) == "6.") {
		$(".nof-clearfix").each(function (i) {
			$(this).append("<div style='clear:both'/>");
			$(this).removeClass("nof-clearfix");
		});
	}
});

// End XHTML adjustment

// Begin Navigation Bars
var ButtonsImageMapping = [];
ButtonsImageMapping["NavigationBar1"] = {
	"NavigationButton1" : { image: "./Home_Hp_highlighted_1.png", rollover: "./Home_HRp_highlightedOver_1.png", w: 120, h: 56 },
	"NavigationButton2" : { image: "./Mission_Np_regular.png", rollover: "./Mission_NRp_regularOver.png", w: 120, h: 56 },
	"NavigationButton3" : { image: "./Events_Np_regular.png", rollover: "./Events_NRp_regularOver.png", w: 120, h: 56, opening: "bottom", offsetX: 0, offsetY: 56 },
	"NavigationButton6" : { image: "./Past-Events_Ns_regular.png", rollover: "./Past-Events_NRs_regularOver.png", w: 120, h: 39 },
	"NavigationButton4" : { image: "./Contact-Us_Np_regular_1.png", rollover: "./Contact-Us_NRp_regularOver_1.png", w: 120, h: 56 }
};

$(document).ready(function(){
	$.fn.nofNavBarOptions({ navBarId: "NavigationBar1", rollover: true, autoClose: true });
	$("#NavigationBar1").nofNavBar({isMain: true, orientation: "horizontal" });
	$("#NavigationBar1_1").nofNavBar({isMain: false, orientation: "vertical", opening: "right", offsetX: 120, offsetY: 0 });
	$("#NavigationBar1 ul").hide();
});


// End Navigation Bars

