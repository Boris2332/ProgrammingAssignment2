## Thank you, fellows! I tried a lot. Hope you'll find in readable.

## In a whole the structure like in R. Peng's functions. But these two functions create inverse matrices for input matrices which are being 
## constructed from the input vectors. Fitstly four functions appear.

makeMatrix <- function(x = integer()) {
    m <- NULL
    set <- function(y) {
        x <<- matrix(y, nrow=sqrt(length(y)), ncol=sqrt(length(y)))
        m <<- NULL
    }
    get <- function() matrix(x, nrow=sqrt(length(x)), ncol=sqrt(length(x)))
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}
            
## Here we take one of those functions and create inverse matrix if initially it wasn't empty.

cacheinverse <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
