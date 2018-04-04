## Put comments here that give an overall description of what your
## functions do

## The "matrix" function can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv = NULL		## setting initialized inv as null
	set = function(y) {	## define the set function to assign new
		x <<- y		## value of matrix in parent
		inv <<- NULL
	}
	get = function() x	##define the get function 
	getinv = function(inverse) inv <<- inverse 	##setting the value of inv parent condition
	getinv = function() inv
	list(set = set, get = get, setinv = stinv, getinv = getinv)	##setting the list order
}


## CacheSolve can return special "matrix" back to makeCacheMatrix
## In case the inverse value has been calculated, cacheSolve will retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
	inv = x$getinv()
	if(!is.null(inv)){
	message("getting cached data")
	return(inv)
}
	mat.date = x$get()
	inv = solve(mat.data, ...)
	x$setinv(inv)
	return(inv)
        ## Return a matrix that is the inverse of 'x'
}
