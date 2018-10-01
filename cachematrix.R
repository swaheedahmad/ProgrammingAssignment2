## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function takes matrix input sets the matrix value, gets the matrix value, sets the inverse matrix, gets the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
		s <- matrix()
        set <- function(y) {
                x <<- y
                s <<- matrix()
        }
        get <- function() x
        setsolve <- function(soln) s <<- soln
        getsolve <- function() s
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## Write a short comment describing this function

# This function takes as an input the makeCacheMatrix function, show the result of the inverse matrix form cache, set the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		s <- x$getsolve()
        if(!anyNA(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
