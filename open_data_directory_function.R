message( "\t", "\t", "open_data_directory" )

# open_data_directory

# Automatically opens a directory in a window (in your system's GUI).
# This function works best when called at the end of a script to see the folder with the results.

odd <- function( dir = data_dir ){
	system(
		paste( Sys.getenv("R_BROWSER"), dir ) )
}


# Usage --------------------------------------------------------------------------------------------
# 1. PRE-define the directory that you want opened: 
# data_dir <- ~/path/to/directory

# 2. Call the function with no arguments at the end of a script (be ready for GUI window to open):
# odd()


# ..................................................................................................
# ..................................................................................................

# same function with a provision for using on a Windows computer

# open_data_directory
# odd <- function( dir = data_dir ){
# 	if (.Platform['OS.type'] == "windows"){
# 		shell.exec(dir)
# 	} else {
# 		system(
# 			paste( Sys.getenv("R_BROWSER"), dir )
# 		)
# 	}
# }
