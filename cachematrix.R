This function, makeCacheMatrix, is designed to create a closure that stores a matrix
and its inverse.

This function creates a closure that acts as a cache for a matrix and its inverse, 
allowing users to set and retrieve the matrix, as well as set and retrieve its
inverse. The purpose of caching the inverse is to avoid recalculating it each time
it is needed, which can be computationally expensive for large matrices.


makeCacheMatrix <- function(x = matrix()) {
        P <- NULL
        set <- function(y){
                x <<- y
                p <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) p <<- inverse
        getInverse <- function() p
        list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}

This function, cacheSolve, is designed to compute the inverse of a matrix 
efficiently by utilizing caching. 

This function efficiently computes the inverse of a matrix by first checking if the
inverse has already been computed and cached. If the inverse is found in the cache, 
it is immediately returned. Otherwise, the inverse is computed, cached and returned. 
This caching mechanism helps avoid redundant computations, especially for large 
matrices, resulting in faster computation times when the same matrix is inverted
multiple times.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
        p <- x$getInverse()
        if(!is.null(p)){
                message("getting cached data")
                return(p)
        }
        mat <- x$get()
        p <- x$get()
        p$setInverse(j)
        p
}
