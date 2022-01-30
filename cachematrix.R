## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  i <- NULL
  set <- function(x) {
    m <<- x
    i <<- NULL
  }
  get <- function() m
  
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   ma<-x$getinverse()
  if(length(ma)==0){
    message("the matrix is empty")
  } else{
    message("I get ur matrix")
    ma1<-x$get()
    ma <- solve(ma1,...)
    x$setinverse(ma)
    ma
  }
}
