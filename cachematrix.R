## Matrix inversion is usually a costly computation and there may be some benefit to caching 
## the inverse of a matrix rather than computing it repeatedly.

## The makeCacheMatrix() function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
{

        inv <- NULL
        set <- function(y) 
        {
                x <<- y
                inv <<- NULL
        }
        
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        
        list(set = set, 
             get = inv,
             setinverse = setinverse ,
             getinverse = getinverse )
  

}


## The cacheSolve() function computes the inverse of the special "matrix" returned by makeCacheMatrix. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getinverse()
        
        if(!is.nullinv)) 
        {
                message("getting cached data")
                return(inv)
        }

        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv

}
