


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) {i<<-inverse} 
  getinverse <- function() {i}
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


#makeCacheMatrix  creates a special "matrix" object that can cache its inverse
#it takes a matrix as an input

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    print("cached data collected")
    return(i)
  }
  data<-x$get()
  i<-slove(data,...)
  x$setinverse(i)
  i
}
