## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## How to create the make cache Matrix
## Caching the inverse of a Matrix
## Always remember return a matrix that is the inverse of 'x'
## Use the "makeVector" as an example

## This function create the following "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
			x <<- y
			inv <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() inv
	list(set = set, get = get,
		 setInverse = setInverse,
		 getInverse = getInverse)
	
}

## The above function will computes the inverse of the special "matrix" 
## via makeCacheMatrix above. If the inverse and matrix stay the same by right
## it should skip the computation and retrive the inverse from the cache.

cachemean <- function (x, ...) {
	## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if (!is.null(inv)) {
			message("getting cache data")
			return(inv)
	}	
	mat <- x$get()
	inv <- solve(mat, ...)
	x$setInverse(inv)
	inv
  
} 



