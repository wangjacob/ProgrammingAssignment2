## Some steps in command line interface for testing:
#### 1. Change your input matrix here.
inputMatrix<-matrix(1:4,2,2) 
#### 2. Initialize a list "y" containing the functions and matrix.
y <-makeCacheMatrix()
#### 3. Create 2 by 2 matrix in sorted order 1 to 4
y$set(inputMatrix)
#### 4. Show the original input matrix
y$get()
#### 5. Check that the inversed matrix is a null since the firt time initialization.
y$GetInverse()
#### 6. 1st call: calculate the inversed matrix and store it to cache.
cacheSolve(y)
#### 7. 2nd call: inversed matrix in cache has been calculated, print the Message. 
cacheSolve(y) 