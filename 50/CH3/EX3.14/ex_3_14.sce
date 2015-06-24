//example no. 3.14
//solve system by cholesky method

A=[1 2 3;2 8 22;3 22 82]

b=[5;6;-10]

L=cholesky (A,3)  //call cholesky function to evaluate the root of the system
n=3;
Z=fore(L,b);

X=back(L',Z)