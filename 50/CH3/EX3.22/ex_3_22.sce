//example no. 3.22
//solve the system by gauss seidel method

A=[2 -1 0;-1 2 -1;0 -1 2]

b=[7;1;1]

N=3;        //no. of ierations
n=3;        // order of the matrix is n*n

X=[0;0;0]              //initial approximation


gaussseidel(A,n,N,X,b)              //call the function which performs gauss seidel method to solve the system