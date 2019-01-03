## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##set the value of the vector
##then get the value of the vector
##set the value of the invers
##get the value of the invers
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) { 
    x <<- y
    inv <<- NULL
  }
  get <- function() x 
  setinv <- function(solve) inv <<- solve 
  getinv <- function() inv 
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv) 
}


## Write a short comment describing this function
#first checks to see if the invers of the matrix is already calculated. If so, it gets the inverse from the catche 
#calculates the inverse of the matrix and set the value of inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...) 
  x$setinv(inv)
  inv
}
