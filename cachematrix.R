rm(list=ls())

## R Programming project 2.

makeCacheMatrix <- function(x = numeric()) {
  cache <- NULL
  
  the_matrix<-function(){
    x
  }
  
  cacheInverse <- function(abc) {
    cache <<- abc
  }
  
  
  getInverse <- function() {
    cache
  }
  
  list(the_matrix = the_matrix, cacheInverse = cacheInverse, getInverse = getInverse)
}

##
cacheSolve <- function(y, ...) {
  inverse <- y$getInverse()
  if(!is.null(inverse)) {
    message("showing cached data")
    return(inverse)
  }

  data <- y$the_matrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  inverse
}
