message( "\t", "\t", "clean_structure_function" )

# cstr (clean structure)

# Compactly displays the internal structure of an R object 
# [A read-friendly wrapper for the str() function]

cstr <- function(x, vec.len = 1, standard = "SI", units = "kB") {
	str(
		
		# most important
		x, 
		vec.len = vec.len,
		give.attr = FALSE,
		
		# tweaks in presentation
		comp.str = "• ", # string to be used for separating list components.
		width = 70,
		strict.width = "cut",
	)
	cat( 
		"Estimate of memory allocation attributable to object: ",
		format( object.size(x), standard = standard, units = units )
	)
}
