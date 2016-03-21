## Put comments here that give an overall description of what your
## functions do

## The function creats a special matxix that can
## set the value of the matrix
## get the value of the matrix
## set the value of the solve
## get the value of the solve

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setsolve <- function(solve) m <<- solve
     getsolve <- function() m
     list (set = set, get = get,
           setsolve = setsolve, getsolve = getsolve)
}


## The function returns the inverse of the cahced matrix if it exists
## Otherwise, it computes the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m <- x$getsolve()
     if(!is.null(m)) {
          message("getting cahced data")
          return(m)
     }
     data <- x$get()
     m <- solve(data, ...)
     x$setsolve(m)
     m
}