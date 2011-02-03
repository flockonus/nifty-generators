// this validation requires JS


if( jQuery ){
	j = jQuery;
	// Usado para limitar o numeros de caracteres de qualquer campo de texto.
	function count_and_redefine_max(e){
	  try{
	    // get the input and the maximum length
	    var input = j( e.currentTarget || e )
	    
	    
	    // cap at the maximum!
	    //parseInt
	    
	    // Reformat the display
	    if( input.siblings('.limit_input').length > 0 ){
	      var max_val = input.siblings('.limit_input').text().match( /.*\/(.*)/ )[1]
	      input.siblings('.limit_input').text( input.val().length + "/" + max_val )
	    }else{ // in case field has errors, it won't break stuff
	      var limit_span = input.parent().prevAll('.limit_input:first')
	      var max_val = limit_span.text().match( /.*\/(.*)/ )[1]
	      limit_span.text( input.val().length + "/" + max_val )
	    }
	      
	  } catch(e){
	    // if has no max, keep walking, JW
	  }
	}

	// Takes the last form, that should be the scaffolded one; bind and update the counts.
	j('form:last').find('input[type=text]').each( function(i,e){
	  j(e).keyup( count_and_redefine_max )
	  count_and_redefine_max(e)
	})
}
