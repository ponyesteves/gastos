# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$('#crearNuevo').click ->
		$('#nuevo').css('display','block')
		$('#overlay').addClass('overlay');
	$('#abrirFiltro').click ->
		$('#filtro').css('display','block')
		$('#overlay').addClass('overlay');
$(document).ready(ready)
$(document).on('page:load', ready)

