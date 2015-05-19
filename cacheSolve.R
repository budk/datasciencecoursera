cacheSolve<- function(x, ...) {
  ## This function computes the inverse of the special "matrix" 
  ## returned by makeCacheMatrix. 
  ##
  ## If the inverse has already been calculated (and the matrix
  ## has not changed), then this function should retrieve the
  ## inverse from the cache.
  
  
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


cacheSolve(1:10)

