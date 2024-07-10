message( "\t", "\t", "Do_Not_Delete" )

# Do_Not_Delete

# Takes a vector of character strings with the names of objects in the global environment 
# that you do not want deleted and deletes all other objects.

Do_Not_Delete <- function( object_names = character() ) {
  
  # adds the name of the function itself to avoid deletion
  object_names <- append( object_names, values = c( "Do_Not_Delete", "not_trash" ) )
  
  # delete all other objects in the environment
  remove( 
    envir = .GlobalEnv, 
    list = ls( name = .GlobalEnv )[ !( ls(name = .GlobalEnv) %in% as.character(object_names) ) ]
  )
  
}


# Notes --------------------------------------------------------------------------------------------

# 1.
# The `remove` and the `ls` functions need to be clear on where to work: outside the scope of the
# function, in the global environment ".GlobalEnv".
# This is set with:
# `envir = .GlobalEnv` for the `remove` function
# `name = .GlobalEnv` for the `ls` function

# 2.

# ls(name = .GlobalEnv) 
#     returns a vector of character strings with the names of objects in the specified environment. 

# ls(name = .GlobalEnv) %in% as.character(object_names)
#     returns a logical vector with TRUE for the objects to keep, FALSE for the ones to delete.

# ls( name = .GlobalEnv )[ !( ls(name = .GlobalEnv) %in% as.character(object_names) ) ]
#     returns a vector of character strings with the names of objects to delete. 
#     This result goes in the "list" argument of the remove function (do not confuse with an object of type `list`)
#     Note the usage of the [!()] form to subset the vector given by the first ls(name = .GlobalEnv)


# Example ------------------------------------------------------------------------------------------

# some objects in the global environment
# x <- 1; y <- "abc"; z <- 3
# trash_1 <- "trash"; trash_2 <- "trash"

# Sample call 1
# Do_Not_Delete( object_names = c( "x", "y", "z") )

# Sample call 2
# not_trash <- c( "x", "y", "z")
# Do_Not_Delete( object_names = not_trash )


# to-do list ---------------------------------------------------------------------------------------

# add this message later, or a "Continue?" type message so the user can double check
# message( "delete everything except these objects: ", object_names ) 
