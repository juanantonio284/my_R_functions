message( "\t", "\t", "cstr (clean structure)" )

# cstr (clean structure)

# This is a wrapper for the `str()` function; it displays the internal structure of an R object in 
# an easier-to-read fashion.

cstr <- function( object, vec.len = 1, standard = "SI", units = "kB") {
	
  str(
		object, 
		vec.len = vec.len,
		give.attr = FALSE,
		comp.str = "• ", # string to be used for separating list components.
		width = 70,
		strict.width = "cut"
	)
  
	cat(
		"Estimate of memory allocation attributable to object: ",
		format( object.size( object ), standard = standard, units = units )
	)
	
}
