## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
cachedInverse <- NULL
        set <- function(y) {
        x <<- y  # Assign the input matrix 
        cachedInverse <<- NULL  # Reset the cached inverse when the matrix changes


                get <- function() {
        x
}
setInverse <- function(inverse) {
        cachedInverse <<- inverse  }
    
   
    getInverse <- function() {
        cachedInverse  }
    
    
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       
        inverse <- cacheMatrix$getInverse()
    if (!is.null(inverse)) {
        message("cached inverse")
        return(inverse)
    }
    
   # not cached
    matrix <- cacheMatrix$get()
    inverse <- solve(matrix)
    cacheMatrix$setInverse(inverse)
    inverse
}

