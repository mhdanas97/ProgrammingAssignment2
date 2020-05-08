## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will return a list containing the set, get values
## of the matrix as well as the set, get values of it's inverse
## I will try to immitate the code for `makeVector` that is provided
## in the README

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  
  set <- function(y){
    x<<-y
    i<<-NULL
  }
  
  get<-function() x
  
  setinv<-function(solve)i<<-solve
  
  getinv<-function()i
  
  list(set=set,get=get,setinv=setinv,getinv=getinv)
  
}


## Write a short comment describing this function
## This function will try to return the inverse of the
## matrix that was cached. The function will not handle cases
## when the inverse can't be computed
## I will try to imitate `cachmean` in the README

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i<-x$getinv()
        if(!is.null(i)){
          message("getting cached inverse")
          return (i)
        }
        data<-x$get()
        i<-solve(data,...)
        x$setinv(i)
        i
}
