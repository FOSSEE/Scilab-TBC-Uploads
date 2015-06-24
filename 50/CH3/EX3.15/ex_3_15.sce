//example no. 3.15
//solve system by cholesky method

A=[4 -1 0 0;-1 4 -1 0;0 -1 4 -1;0 0 -1 4]

b=[1;0;0;0]

L=cholesky (A,4)  //call cholesky function to evaluate the root of the system

n=4;
Z=fore(L,b);

X=back(L',Z)

//since  A=L*L' ,
// inv(A)=inv(L')*inv(L)
// let inv(A)=AI

AI=L'^-1*L^-1