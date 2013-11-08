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
	
	var bloqueVisible=0;
	function pullHistory(url)
	{
		var bloque;
		var slideFamilia;
		switch(url)
		{
			case '':
				bloque=0;
			break
			case 'inicio':
				bloque=0;
			break
			case 'beneficio':
				bloque=1;
			break
			case 'cello':
				bloque=2;
			break
			case 'familia':
				bloque=3;
			break
			case 'videos':
				bloque=4;
			break
			// case 'beneficios-CeramicaEnemel':
			// 	bloque=1;
			// 	slideBeneficios=0;
			// break
			// case 'beneficios-BotonEco':
			// 	bloque=1;
			// 	slideBeneficios=1;
			// break
			// case 'beneficios-FuncionAderezo':
			// 	bloque=1;
			// 	slideBeneficios=2;
			// break
			// case 'beneficios-TripleDistribuciónDeOndas':
			// 	bloque=1;
			// 	slideBeneficios=3;
			// break
			// case 'cello-SlimFry':
			// 	bloque=2;
			// 	slideCello=0;
			// break
			// case 'cello-DisenoElegante':
			// 	bloque=2;
			// 	slideCello=1;
			// break
			// case 'cello-BandejaMasGrande':
			// 	bloque=2;
			// 	slideCello=2;
			// break
			case 'familia-MG402MADXBB':
				bloque=3;
				slideFamilia=0;
			break
			case 'familia-AGE1103TST':
				bloque=3;
				slideFamilia=1;
			break
			case 'familia-AGE1103TW':
				bloque=3;
				slideFamilia=1;

				$('.slide_item_1 .btns_colores_contenedor .btns_color').removeClass('activo')
				$('.slide_item_1 .btns_colores_contenedor .btns_color.btn_blanco').addClass('activo')


				$('.slide_item_1 .color_contenedor_slide').removeClass('activo')
				$('.slide_item_1 .color_contenedor_slide.color_blanco').addClass('activo')

			break
			case 'familia-MS402MADXBB':
				bloque=3;
				slideFamilia=2;
			break
			case 'familia-AME1113TST':
				bloque=3;
				slideFamilia=3;
			break
			case 'familia-AME1113TW':
				bloque=3;
				slideFamilia=3;

				$('.slide_item_3 .btns_colores_contenedor .btns_color').removeClass('activo')
				$('.slide_item_3 .btns_colores_contenedor .btns_color.btn_blanco').addClass('activo')


				$('.slide_item_3 .color_contenedor_slide').removeClass('activo')
				$('.slide_item_3 .color_contenedor_slide.color_blanco').addClass('activo')
			break
			case 'familia-AME83M':
				bloque=3;
				slideFamilia=4;
			break
			case 'familia-AMW831K':
				bloque=3;
				slideFamilia=5;
			break

			// case 'video-rf8fj1jbApQ':
			// 	bloque=4;
			// 	slideVideo=1;
			// 	videoModel=0;
			// break
			// case 'video-cW6hFtwmE8E':
			// 	bloque=4;
			// 	slideVideo=1;
			// 	videoModel=1;
			// break
			// case 'video-i_snndYf1As':
			// 	bloque=4;
			// 	slideVideo=1;
			// 	videoModel=2;
			// break

			default:			
				bloque=0;
				// slideBeneficios=0;
				// slideCello=0;
				slideFamilia=0;
				// slideVideo=0;
				// videoModel=0;

			break
		}
		return {
				bloque:bloque,
				slideFamilia:slideFamilia
			}
		
	}

	function pushHistory(a)
	{
		if(msie)
		{
			switch(a)
			{
				case 0:
					location.hash='inicio';
				break;
				case 1:
					location.hash='beneficio';
				break;
				case 2:
					location.hash='cello';
				break;
				case 3:
					location.hash='familia';
				break;
				case 4:
					location.hash='videos';
				break;
			}			
		}
		else
		{
			switch(a)
			{
				case 0:
					history.pushState(null, null, urlLimpia+'#inicio');
				break;
				case 1:
					history.pushState(null, null, urlLimpia+'#beneficio');
				break;
				case 2:
					history.pushState(null, null, urlLimpia+'#cello');
				break;
				case 3:
					history.pushState(null, null, urlLimpia+'#familia');
				break;
				case 4:
					history.pushState(null, null, urlLimpia+'#videos');
				break;
			}

		}
	}// end pushHistory


	function pushHistoryBeneficios(a)
	{
		if(msie)
		{
			switch(a)
			{
				case 0:
					location.hash='beneficios-CeramicaEnemel';
				break;
				case 1:
					location.hash='beneficios-BotonEco';
				break;
				case 2:
					location.hash='beneficios-FuncionAderezo';
				break;
				case 3:
					location.hash='beneficios-TripleDistribuciónDeOndas';
				break;
			}			
		}
		else
		{
			switch(a)
			{
				case 0:
					history.pushState(null, null, urlLimpia+'#beneficios-CeramicaEnemel');
				break;
				case 1:
					history.pushState(null, null, urlLimpia+'#beneficios-BotonEco');
				break;
				case 2:
					history.pushState(null, null, urlLimpia+'#beneficios-FuncionAderezo');
				break;
				case 3:
					history.pushState(null, null, urlLimpia+'#beneficios-TripleDistribuciónDeOndas');
				break;
			}
		}
	}


	function pushHistoryCello(a)
	{
		if(msie)
		{
			switch(a)
			{
				case 0:
					location.hash='cello-SlimFry';
				break;
				case 1:
					location.hash='cello-DisenoElegante';
				break;
				case 2:
					location.hash='cello-BandejaMasGrande';
				break;
			}	
		}
		else
		{
			switch(a)
			{
				case 0:
					history.pushState(null, null, urlLimpia+'#cello-SlimFry');
				break;
				case 1:
					history.pushState(null, null, urlLimpia+'#cello-DisenoElegante');
				break;
				case 2:
					history.pushState(null, null, urlLimpia+'#cello-BandejaMasGrande');
				break;
			}
		}
	}

	function pushHistoryFamilia(a)
	{
		if(msie)
		{
			switch(a)
			{
				case 0:
					location.hash='familia-MG402MADXBB';
				break;
				case 1:
					// location.hash='familia-AGE1103TST';

					if($('.slide_item_1 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						location.hash='familia-AGE1103TST';
					}
					else if($('.slide_item_1 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						location.hash='familia-AGE1103TW';
					}

				break;
				case 2:
					location.hash='familia-MS402MADXBB';
				break;
				case 3:
					// location.hash='familia-AME1113TST';
					if($('.slide_item_3 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						location.hash='familia-AME1113TST';
					}
					else if($('.slide_item_3 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						location.hash='familia-AME1113TW';
					}
				break;
				case 4:
					location.hash='familia-AME83M';
				break;
				case 5:
					location.hash='familia-AMW831K';
				break;

			}	
		}
		else
		{
			switch(a)
			{
				case 0:
					history.pushState(null, null, urlLimpia+'#familia-MG402MADXBB');
				break;
				case 1:
						// history.pushState(null, null, urlLimpia+'#familia-AGE1103TST');
					if($('.slide_item_1 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AGE1103TST');
					}
					else if($('.slide_item_1 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AGE1103TW');	
					}

				break;
				case 2:
					history.pushState(null, null, urlLimpia+'#familia-MS402MADXBB');
				break;
				case 3:
						// history.pushState(null, null, urlLimpia+'#familia-AME1113TST');
					if($('.slide_item_3 .btns_colores_contenedor .btn_gris').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AME1113TST');
					}
					else if($('.slide_item_3 .btns_colores_contenedor .btn_blanco').hasClass('activo'))
					{
						history.pushState(null, null, urlLimpia+'#familia-AME1113TW');					
					}
				break;
				case 4:
					history.pushState(null, null, urlLimpia+'#familia-AME83M');
				break;
				case 5:
					history.pushState(null, null, urlLimpia+'#familia-AMW831K');
				break;
			}
		}
	}


	function microondasBlanco()
	{

	}

	

	function getAltoVentana(){
		var alto=$(window).height();
		// this.setAlto=alto;
		// this.getAlto = verAlto(alto)
		// function verAlto(alto){			
			// return true;
			if(alto<630)
			{
				return 630
			}
			else
			{
				return alto
			}
		// }
	}
	
	// var altoVentana;	
	// function definirAltoDeBloques()
	// {
	// 	altoVentana = new getAltoVentana();
	// 	$('.bloques').css('height',altoVentana.getAlto+'px')
	// 	// $('.contenedor')
	// 	// $('.bloques .contenido').css('height',altoVentana.getAlto-70+'px')
	// }	
	// definirAltoDeBloques()
	
	// function definirAltoDeBloques()
	// {
	// 	// altoVentana = new getAltoVentana();
	// 	$('.bloques').css('height',getAltoVentana()+'px')
	// }	
	// definirAltoDeBloques()


	var altoInicioSite=getAltoVentana();

	$('.bloques').css('height',altoInicioSite+'px')
	var anchoBg=parseInt($('.bloques .bg').css('width'));
	// console.log(anchoBg)

	$('.bloques .bg').css({
		marginLeft:'-'+anchoBg/2+'px'	
	})





	function setALtoIe()
	{
		if(getAltoVentana()<760)
		{
			$('.contenido').css({
		        width: '904px',
		        height: '630px',
		        position: 'absolute',        
		        top: '50px',
		        left: '50%',
		        marginLeft:' -452px',
		        marginTop: '0px',
		        zIndex: 20
			})
		}
	
	}

	if(lt_ie9)
	{
		setALtoIe()	
	}
	

	function lanzarPageView(a)
	{
		switch(a)
		{
			case 0:
				_gaq.push(['_trackPageview', '/samsung-landingmicroondas-home']);
			break;
			case 1:
				_gaq.push(['_trackPageview', '/samsung-landingmicroondas-beneficios']);
			break;
			case 2:
				_gaq.push(['_trackPageview', '/samsung-landingmicroondas-cello']);
			break;
			case 3:
				_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo1']);
			break;
			case 4:
				_gaq.push(['_trackPageview', '/samsung-landingmicroondas-videos1']);
			break;
		}
	}




	if(urlHash!="")
	{
		$.scrollTo(getAltoVentana()*pullHistory(urlHash).bloque, 800,
				{
						onAfter:function(){
							bloqueVisible=pullHistory(urlHash).bloque;
							// console.log(bloqueVisible)
							primeraVez=false;
							if(bloqueVisible==1)
							{
								$('.btn_clases_gratis').show()
							}
							else
							{
								$('.btn_clases_gratis').hide()
							}

							lanzarPageView(bloqueVisible)
						}

				}
			)
		$('.menu_principal a').removeClass('activo');
		$('.menu_principal .menu_item_'+pullHistory(urlHash).bloque+' a').addClass('activo')
	}
	else
	{
		lanzarPageView(0)
	}



	$(window).resize(function(){
		// var altoVentana;
		// altoVentana = new getAltoVentana();
		$('.bloques').css('height',getAltoVentana()+'px')
		// anchoBg=parseInt($('.bloques .bg').css('width'));

		// $('.bloques .bg').css({
		// 	marginLeft:'-'+anchoBg/2+'px'	
		// })

		// definirAltoDeBloques()
		// getAltoVentana.prototype.setAlto=$(window).height()
		// var altoVentana= new getAltoVentana();
		// if(altoVentana.alto<630)
		// {
		// 	$('.bloques').css('height','630px')	
		// }
		// else
		// {
		// 	$('.bloques').css('height',altoVentana.alto+'px')		
		// }		
	})





	var boton_menu_clicked=false;

	$('.menu_items a').each(function(){
		$(this).on('click', function(){
			boton_menu_clicked=true;
			$('.menu_items a').removeClass('activo')
			$(this).addClass('activo')
			var id=parseInt($(this).attr('data-id'))
			var _x = getAltoVentana()*id;			
			$.scrollTo( _x, 800,
				{
					onAfter:function(){
						boton_menu_clicked=false;
						//console.log(id)
						if(id==1)
						{
							$('.btn_clases_gratis').show()
						}
						else
						{
							$('.btn_clases_gratis').hide()
						}
					}
				}
			)
			pushHistory(id)
			lanzarPageView(id)

			if(id!=4)
			{	
				$('.btn_cont_abajo').show()
				$('.btn_volver_arriba').hide()
			}
		})		
	})


	$('.btn_cont_abajo').on('click', function(){
		// console.log(bloqueVisible)
		$.scrollTo(getAltoVentana()*(bloqueVisible+1), 800,
				{
						onAfter:function(){
							// bloqueVisible=pullHistory(urlHash).bloque;
							// console.log(getAltoVentana()*(pullHistory(urlHash).bloque+1))
							// if(bloqueVisible==0)
							// {
							// 	$('.btn_clases_gratis').hide()
							// }
							// else
							// {
							// 	$('.btn_clases_gratis').show()
							// }
						}

				}
		)
	})

	$('.btn_volver_arriba').on('click', function(){

			boton_menu_clicked=true;
			$(this).hide();
			$('.btn_cont_abajo').show()
			$.scrollTo(0, 800,
				{
					onAfter:function(){
						boton_menu_clicked=false;
					}
				}
			)
			pushHistory(0)
	})


	$('.btns_color').each(function(){
		$(this).on('click', function(){
			if(!$(this).hasClass('activo'))
			{
				var c= $(this).attr('data-color')
				var slide= parseInt( $(this).attr('data-slide'))
				$(this).siblings('.btns_color').removeClass('activo')
				// $(this).siblings('btns_color').removeClass('activo')
				//console.log('.btn_'+c)
				$(this).addClass('activo')

				$(this).parent('.btns_colores_contenedor').siblings('.color_contenedor_slide').removeClass('activo')
				$(this).parent('.btns_colores_contenedor').siblings('.color_'+c).addClass('activo')

				if(!lt_ie9)
				{
					if(slide==1)
					{
						pushHistoryFamilia(1);
					}
					if(slide==3)
					{
						pushHistoryFamilia(3);
					}					
				}
				
			}
			
		})
	})

	// $('.slide_item_1 .btns_color').on('click', function(){
	// 	pushHistoryFamilia(1);
	// })


	var _inicio=true;
	var _beneficio=true;
	var _cello=true;
	var _familia=true;
	var _video=true;


	$( window ).scroll(function() {
		primeraVez=false;
		if(!boton_menu_clicked)
		{
			var st=$( window ).scrollTop()
			var alto=getAltoVentana();
			// //console.log('scroll: '+st)
			if(st<alto*0.5)
			{
				if(_inicio)
				{
					//console.log('_inicio')
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_inicio').addClass('activo')					
					pushHistory(0)
					_inicio=false;	
					_beneficio=true;
					_cello=true;
					_familia=true;
					_video=true;
					$('.btn_clases_gratis').hide()
					bloqueVisible=0;				}
			}
			else if(st>alto*0.5 && st<alto*1.5 )
			{
				if(_beneficio)
				{
					//console.log('_beneficio')
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_beneficio').addClass('activo')				
					pushHistory(1)
					_inicio=true;	
					_beneficio=false;
					_cello=true;
					_familia=true;
					_video=true;	

					$('.btn_clases_gratis').show()
					bloqueVisible=1;
				}
				//pushHistory(1)
			}
			else if(st>alto*1.5 && st<alto*2.5 )
			{
				if(_cello)
				{
					//console.log('_cello')
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_cello').addClass('activo')
					pushHistory(2)
					_inicio=true;	
					_beneficio=true;
					_cello=false;
					_familia=true;
					_video=true;	
					$('.btn_clases_gratis').hide()
					bloqueVisible=2;
				}
			}
			else if(st>alto*2.5 && st<alto*3.5 )
			{
				if(_familia)
				{
					//console.log('_familia')
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_familia').addClass('activo')
					
					$('.btn_cont_abajo').show()
					$('.btn_volver_arriba').hide()
					pushHistory(3)
					_inicio=true;	
					_beneficio=true;
					_cello=true;
					_familia=false;
					_video=true;	
					$('.btn_clases_gratis').hide()
					bloqueVisible=3;
				}
			}
			else if(st>alto*3.5)
			{
				if(_video)
				{
					//console.log('_video')
					$('.menu_items a').removeClass('activo')
					$('.menu_items a.btn_video').addClass('activo')
					
					$('.btn_cont_abajo').hide()
					$('.btn_volver_arriba').show()
					pushHistory(4)
					_inicio=true;	
					_beneficio=true;
					_cello=true;
					_familia=true;
					_video=false;	
					$('.btn_clases_gratis').hide()
					bloqueVisible=4;
				}	
			}
		}
	});


	var animacionSlide='fade';
	if(lt_ie9)
	{
		animacionSlide='none';
	}

	var vuelta_completa_beneficio=false;
	$('.slide_beneficios').cycle({
			fx: animacionSlide,
			timeout:0,
			//delay:3000,
			speed:1000,
			cleartype:false,
			pager:'.slide_beneficios_pager',
			startingSlide:0,
			before:function(curr, next, opts){
				// //console.log(opts.currSlide)

			},	
			after:function(curr, next, opts){
				//pushHistoryBeneficios(opts.currSlide);
				switch(opts.currSlide)
				{
					case 0:
						if(vuelta_completa_beneficio)
						{
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','beneficios','beneficio1']);
							vuelta_completa_beneficio=true;
						}
					break;
					case 1:
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','beneficios','beneficio2']);
							vuelta_completa_beneficio=true;
					break;
					case 2:
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','beneficios','beneficio3']);
							vuelta_completa_beneficio=true;
					break;
					case 3:
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','beneficios','beneficio4']);
							vuelta_completa_beneficio=true;
					break;
				}
			},			
			end:function(){
				}
	})

	// $('.slide_familia_pager a').each(function(){
	// 	$(this).on('click', function(){
	// 		//console.log('aaa')
	// 		primeraVez=false;
	// 	})
	// })

	var vuelta_completa_cello=false;
	$('.slide_cello').cycle({
			fx: animacionSlide,
			timeout:0,
			//delay:3000,
			speed:1000,
			cleartype:false,
			pager:'.slide_cello_pager',
			startingSlide:0,
			after:function(curr, next, opts){
				//pushHistoryBeneficios(opts.currSlide);
				switch(opts.currSlide)
				{
					case 0:
						if(vuelta_completa_cello)
						{
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','cello','cello1']);
							vuelta_completa_cello=true;
						}
					break;
					case 1:
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','cello','cello2']);
							vuelta_completa_cello=true;
					break;
					case 2:
							_gaq.push(['_trackEvent', 'samsung-landingmicroondas','cello','cello3']);
							vuelta_completa_cello=true;
					break;
				}
			},
			before:function(curr, next, opts){
				//pushHistoryCello(opts.currSlide);
			},			
			end:function(){
				}
	})

	var vuelta_completa_familia=false;
	$('.slide_familia').cycle({
			fx: animacionSlide,
			timeout:0,
			//delay:3000,
			speed:1000,
			cleartype:false,
			pager:'.slide_familia_pager',
			startingSlide:pullHistory(urlHash).slideFamilia,
			next:'.flecha_right',
			prev:'.flecha_left',
			before:function(curr, next, opts)
			{
				// console.log(opts.currSlide)
			},
			after:function(curr, next, opts){
				// //console.log(primeraVez)}
				// console.log(opts.currSlide)
				if(primeraVez==false)
				{
					if(!lt_ie9)
					{
						pushHistoryFamilia(opts.currSlide);	
					}
					
				}

				switch(opts.currSlide)
				{
					case 0:
						if(vuelta_completa_familia)
						{
							_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo1']);
							vuelta_completa_familia=true;	
						}
					break;
					case 1:
						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo2']);
						vuelta_completa_familia=true;
					break;
					case 2:
						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo3']);
						vuelta_completa_familia=true;
					break;
					case 3:
						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo4']);
						vuelta_completa_familia=true;
					break;
					case 4:
						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo5']);
						vuelta_completa_familia=true;
					break;
					case 5:
						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-familia/modelo6']);
						vuelta_completa_familia=true;
					break;
				}

			},			
			end:function(){
				}
	})
	var vuelta_completa_video=false;
	$('.slide_videos').cycle({
			fx: animacionSlide,
			timeout:0,
			//delay:3000,
			speed:1000,
			cleartype:false,
			pager:'.slide_videos_pager',
			startingSlide:0,
			after:function(curr, next, opts){
				switch(opts.currSlide)
				{
					case 0:
						if(vuelta_completa_video)
						{
							_gaq.push(['_trackPageview', '/samsung-landingmicroondas-videos1']);	
						}						
					break;
					case 1:
						_gaq.push(['_trackPageview', '/samsung-landingmicroondas-videos2']);
						vuelta_completa_video=true
					break;
				}
			},		
			before:function(curr, next, opts){
			},			
			end:function(){
				}
	})





	$('.btn_tooltip').each(function(){
		$(this).on('click', function(){
			var t=$(this).siblings('.tooltip');
			t.siblings('.btn_tooltip').addClass('activo')
			var s=0.5;
			if(lt_ie9)
			{
				s=0;
			}

			TweenMax.to(t,s,
				{
					autoAlpha:1
				}
			)
		})

		
	})

	$('.btn_cerrar_tooltip').each(function(){
		$(this).on('click', function(){

			var t=$(this).parent('.tooltip')
			t.siblings('.btn_tooltip').removeClass('activo')
			var s=0.5;
			if(lt_ie9)
			{
				s=0;
			}

			TweenMax.to(t,s,
				{
					autoAlpha:0
				}
			)			
		})
	})


	$('.btn_clases_gratis').on('click', function(){
		$('.clases_popup').show()
		var s=0.5;
		if(lt_ie9)
		{
			s=0;
		}
		TweenMax.to($('.modal'),s,
						{
							autoAlpha:1
						}
					)
	})
	$('.btn_cerrar_clases').on('click', function(){
		$('.clases_popup').hide()
		var s=0.5;
		if(lt_ie9)
		{
			s=0;
		}
		TweenMax.to($('.modal'),s,
						{
							autoAlpha:0
						}
					)
	})
	$('.btn_cerrar_video').on('click', function(){
		$('.video_popup').hide();
		$('.video_contendor').removeClass('add_sombra');
		var s=0.5;
		if(lt_ie9)
		{
			s=0;
		}
		TweenMax.to($('.modal'),s,
						{
							autoAlpha:0,
							onComplete:function(){
								$('.video_embed').html('<div id="video_id"></div>')
							}
						}
					)
	})

	$('.video_btn_play').each(function(){	
		$(this).on('click', function(){
			var video_id=$(this).attr('data-videoid');
			var video_titulo=$(this).attr('data-titulo');
			var video_info=$(this).attr('data-info');
			var video_time=$(this).attr('data-time');

			$('.video_popup').show()
			$('.video_popup .titulo_video').html(video_titulo)
			$('.video_popup .descripcion_video').html(video_info)
			var s=0.5;
			if(lt_ie9)
			{
				s=0;
			}
			TweenMax.to($('.modal'),s,
							{
								autoAlpha:1
							}
			)
			cargarVideo(video_id)
		})
	})

	function cargarVideo(videoid)
	{	
		var videoID = videoid
		var params = { allowScriptAccess: "always", wmode: "transparent" };
		var atts = { id: "ytPlayer" };
		swfobject.embedSWF("//www.youtube.com/v/" + videoID + "?version=3&enablejsapi=1&playerapiid=player1&wmode=transparent", "video_id", "733", "433", "9", null, null, params, atts);
	}


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




