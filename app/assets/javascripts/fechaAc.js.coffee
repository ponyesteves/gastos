ready = ->
	$(':input[type=date]').focusout ->
		date = $(this).val().split('-')
		dd = parseInt(date[2])
		mm = parseInt(date[1])
		yyyy = parseInt(date[0])
		if dd < 10
			dd = "0" + dd.toString()
		else
			dd = dd.toString()
		if mm < 10
			mm = "0" + mm.toString()
		else
			mm = mm.toString()
		if yyyy < 100 
			yyyy = (yyyy + 2000).toString()
		else
			yyyy = yyyy.toString()
		date = yyyy+"-"+mm+"-"+dd
		$(this).val(date)	
$(document).ready(ready)
$(document).on('page:load', ready)
