## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not 
## changed), then the cachesolve should retrieve the inverse from the cache.
##
## Write a short comment describing this function
## in makeCacheMatrix, you can:
## 1. Create an matrix using set() function;
## 2. Fetch this matrix from cache using get() function;
## 3. Set the inverse of the matrix using SetInverse() function;
## 4. Get the inverse of the matrix using GetInverse() function.
makeCacheMatrix <- function(x = matrix()) {
  InverseMatrix <- NULL
  set <- function(y){
          if (is.matrix(y)){
          nd <- dim(y)
          x <<- y
          InverseMatrix <<- NULL
          if (nd[1] != nd[2]) message("Input matrix must be a square matrix.")
          if (det(x) == 0){message("The determinant of input matrix is zero.")
                           message("Input matrix is invertible. Please use another example.")
                            }
          }else message("Input must be a matrix!")
  }
  get <- function() x
  SetInverse <- function(InMatrix)    InverseMatrix <<-InMatrix
  GetInverse <- function() InverseMatrix
  list(set = set, get = get, SetInverse = SetInverse, GetInverse = GetInverse)
}


## --------------------------------------------------------------------------------
## Write a short comment describing this function
## cacheSolve will identify whether the inversed matrix exists in the cache:
## 1. If inversed matrix already exists, then directly return this matrix;
## 2. Otherwise, calculate and cache the inversed matrix.

cacheSolve <- function(x, ...) {
  inv<-x$GetInverse()
  if(!is.null(inv)){
          message("getting cached data")
          return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  ## Return a matrix that is the inverse of 'x'
  x$SetInverse(inv)
  print(inv)
}
