//example no. 3.13
//solve system by LU decomposition method

A=[2 1 1 -2;4 0 2 1;3 2 2 0;1 3 2 -1]

b=[-10;8;7;-5]

[U,L]=LandU(A,4)
n=4;
Z=fore(L,b);

X=back(U,Z)

//since  A=L*U ,
// inv(A)=inv(U)*inv(L)
// let inv(A)=AI

AI=U^-1*L^-1
