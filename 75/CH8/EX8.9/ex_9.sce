//EXAMPLE (PG 544)

//A(e) = A0 + eB

A0=[2 1 0;1 2 1;0 1 2]
B=[0 1 1;-1 0 1;-1 -1 0]
//inv(A(e)) = C = inv(A0)
C=inv(A0)
b=[0 1 2]'
x=A0\b
r=b-A0*x