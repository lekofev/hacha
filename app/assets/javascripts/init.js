/**
*
* @fileoverview Libreria con funciones de utilidad
* @author rrodriguez
* @date 25/10/2013
* @version 1.0
*/

$(document).ready(function(){
	var lt_ie9=false;
	var msie=false;
	var url=document.URL;
	var urlHash;
	var urlLimpia;
	var primeraVez=true;

	urlHash=location.hash;
	urlHash=urlHash.substring(1,urlHash.length)

	var urlLimpia=url;
	while(urlLimpia.search('#')!=-1)
	{
		urlLimpia=urlLimpia.substring(0,urlLimpia.length-1)
	}

	if(jQuery.browser.msie && jQuery.browser.version<9.0)
	{
		lt_ie9=true;
	}	

	if(jQuery.browser.msie)
	{
		msie=true;
	}	

	// $('.banner_animacion').roundabout();


	$.fn.cycle.transitions.scrollHorzFade = function($cont, $slides, opts) {
		$cont.css('overflow','visible').width();
		opts.before.push(function(curr, next, opts, fwd) {
			opts.cssBefore.left = fwd ? (next.cycleW-1) : (1-next.cycleW);
			opts.animOut.left = fwd ? -curr.cycleW : curr.cycleW;
		});
		opts.cssBefore= { opacity: 0, display: 'block' };
		opts.animIn   = { opacity: 1, left: 0 };
		opts.animOut  = { opacity: 0 };
	};		

		var efecto='scrollHorzFade';
		if(lt_ie9)
		{
			efecto='none'
		}

		var caption = $('#caption');

		$('.banner_animacion').cycle({
			fx: efecto,
			timeout:0,
			slideResize: true,
			containerResize: true,			
			cleartype:false,
			startingSlide:0,
			fit: 1,
			prev:'.btn_flecha_left',
			next:'.btn_flecha_right',
			before:function(curr, next, opts){
				$('.banner_animacion').css('overflow','visible')				
			},
		    after:  function(curr, next, opts) {
		    	caption.html('Image ' + (opts.currSlide + 1) + ' of ' + opts.slideCount);
		    	$('.banner_animacion').css('overflow','hidden')
		    }
		})




	// $('.slide_videos').cycle({
	// 		fx: animacionSlide,
	// 		timeout:0,
	// 		//delay:3000,
	// 		speed:1000,
	// 		cleartype:false,
	// 		pager:'.slide_videos_pager',
	// 		startingSlide:0,
	// 		after:function(curr, next, opts){
	// 			switch(opts.currSlide)
	// 			{
	// 				case 0:
	// 					if(vuelta_completa_video)
	// 					{
	// 						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-videos1']);	
	// 					}						
	// 				break;
	// 				case 1:
	// 					_gaq.push(['_trackPageview', '/samsung-landingmicroondas-videos2']);
	// 					vuelta_completa_video=true
	// 				break;
	// 			}
	// 		},		
	// 		before:function(curr, next, opts){
	// 		},			
	// 		end:function(){
	// 			}
	// })

});// end jQuery


function onYouTubePlayerReady(playerId) {
	ytplayer = document.getElementById("ytPlayer");
	//console.log('video ready')
	playVideo();
	addSombraVideo()
}
function addSombraVideo()
{
	// //console.log('sombraaaa')
	$('.video_contendor').addClass('add_sombra')
}
function playVideo() {
	if (ytplayer)
	{
	ytplayer.playVideo();
	}
}

function pauseVideo() {
	if (ytplayer)
	{
	ytplayer.pauseVideo();
	}
}  




