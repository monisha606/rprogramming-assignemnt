## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {          #function to take input matrix
  
  inv <- NULL                                          #NULL Object to var inv
  set <- function(y) {                                 #set value of matrix using function y
    x <<- y                                  #assignment operator parent function makeCache matrix have acces to this funtion
    inv <<- NULL
  }
  get <- function() {x}                  #get value of matrix
  setinv <- function(inverse) inv <<- inverse      #set value of inverse to setInverse
  getinv <- function() {inv}                       #get value of Inverse
  list(set = set, get = get, setinv = setinv, getinv = getinv)      #creating list 
}
## Write a short comment describing this function
#Inverse of matrix 
cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()        #returns inverse of matrix and assign to inv
  if(!is.null(inv)) {      #if already done computation
    message("getting cached result")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)           #compute inverse 
  x$setinv(inv)                          #set value in cache 
  inv
}
