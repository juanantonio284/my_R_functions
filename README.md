# my_R_functions

Some functions I've created

## cstr (clean structure)

This is a wrapper for the `str()` function; it displays the internal structure of an R object in an
easier-to-read fashion.
  
**Comparison of `str` and `cstr` for a sample object x**

```R

library(data.table)

x <- data.table(
  year = 2010:2014,
  v1 = runif(5),
  v2 = 1:5,
  v3 = letters[1:5]
)

# Given an object x, call str and cstr to compare their outputs
str(x)
cstr(x)

``` 
```


> str(x)
Classes ‘data.table’ and 'data.frame':  5 obs. of  4 variables:
$ year: int  2010 2011 2012 2013 2014
$ v1  : num  0.524 0.977 0.441 0.298 0.153
$ v2  : int  1 2 3 4 5
$ v3  : chr  "a" "b" "c" "d" ...
- attr(*, ".internal.selfref")=<externalptr> 

> cstr(x)
Classes ‘data.table’ and 'data.frame':  5 obs. of  4 variables:
• year: int  2010 2011 ...
• v1  : num  0.524 ...
• v2  : int  1 2 ...
• v3  : chr  "a" ...
Estimate of memory allocation attributable to object:  2.1 kB

```

## Do_Not_Delete

Takes a vector of character strings with the names of objects in the global environment that you do
not want deleted and deletes all other objects.

```R

# some objects in the global environment
x <- 1; y <- "abc"; z <- 3
trash_1 <- "trash"; trash_2 <- "trash"

# Sample call 1
Do_Not_Delete( object_names = c( "x", "y", "z") )
# everything will be deleted except x, y, and z

# Sample call 2
not_trash <- c( "x", "y", "z")
Do_Not_Delete( object_names = not_trash )
# everything will be deleted except x, y, z, and the 'not_trash' vector

```

## odd (open data directory)

Automatically opens a directory in a window in your system's GUI; works best when called at the end
of a script to see the folder with the results.

```R

# Usage 

# 1. PRE-define the directory that you want opened: 
data_dir <- ~/path/to/directory

# 2. Call the function with no arguments at the end of a script (be ready for GUI window to open):
odd()

```
