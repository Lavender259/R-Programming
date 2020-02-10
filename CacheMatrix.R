## Put comments here that give an overall description of what your
## functions do
## this function helps us get the inverse of a matrix and also cache it 
## there is no need for us to computering again and again when we need
## Write a short comment describing this function
## it means a matrix is made and its inverse will be cached
makeCacheMatrix <- function(x=matrix()) {
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
## Write a short comment describing this function
## the code following use the matrix created by the above "makeCacheMatrix" to calculate the inverse of it
cachesolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- Inverse(data, ...)
        x$setInverse(inv)
        inv
}
