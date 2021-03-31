## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv_mx <- NULL
        set <- function(y) {
                x <<- y
                inv_mx <<- NULL
        }
        get <- function() {x}
        set_inverse <- function(inverse) {inv_mx <<- inverse}
        get_inverse <- function() {inv_mx}
        list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
}


## Write a short comment describing this function
## This function is used to test whether the matric has been cached and is able to produce an inverse. 

cacheSolve <- function(x, ...) {
        inv_mx <- x$get_inverse()
        if(!is.null(inv_mx)){
                message("you can't do that yet")
                return(inv_mx)
        }
        leahsmatrix <- x$get()
        inv_mx <- solve(leahsmatrix, ...)
        x$set_inverse(inv_mx)
        inv_mx
}
