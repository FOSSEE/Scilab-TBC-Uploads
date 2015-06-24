//example no. 3.10
//solve system by decomposition method

A=[1 1 1;4 3 -1;3 5 3]
n=3;

b=[1;6;4]

[U,L]=LandU(A,3)

Z=fore(L,b)

X=back(U,Z)