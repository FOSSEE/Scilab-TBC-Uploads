//example no.3.11
//caption: Inverse using LU decomposition

A=[3 2 1;2 3 2;1 2 2]

[U,L]=LandU(A,3)      // call LandU function to evaluate U,L of A,

//since  A=L*U ,
// inv(A)=inv(U)*inv(L)
// let inv(A)=AI

AI=U^-1*L^-1