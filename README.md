# rprog project:

# The makeCacheMatrix takes a value of a user input matrix.
*It stores the matrix in 'the_matrix' which can be used in other functions.
*The cacheInverse function applies the value of the imported inverse into an empty 'cache'
*getInverse function extracts the value of teh inverse from teh cache.

# cacheSolve() function can either create the inverse matrix of a selected matrix or extract teh value from a cache (if it is availablee)
*This fnctiion writes the vaue of inverse into cache using cacheInverse in makeCache Matrix funcion.

Example:
> x<-makeCacheMatrix(matrix(c(1,2,3,4), nrow=2,ncol=2))
Next, we type - cacheSolve(x)
which returns,    
      [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

But applying cacheSolve(x) a second time returns,
showing cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
This is because teh inverse matrix has been cached after the first attmept, saving computation time.


