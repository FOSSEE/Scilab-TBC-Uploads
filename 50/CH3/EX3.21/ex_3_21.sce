//example no. 3.21
//solve the system by jacobi iteration method

A=[4 1 1;1 5 2;1 2 3]

b=[2 ;-6;-4]

N=3;        //no. of ierations
n=3;        // order of the matrix is n*n

X=[.5;-.5;-.5]              //initial approximation


jacobiiteration(A,n,N,X,b)              //call the function which performs jacobi iteration method to solve the system