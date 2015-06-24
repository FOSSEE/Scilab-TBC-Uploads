//example no.3.9
//solving the system using inverse of the cofficient matrix

A=[1 1 1;4 3 -1;3 5 3]

I=[1 0 0;0 1 0;0 0 1]

b=[1 ;6 ;4]

M=jorden(A,I)

IA=M(1:3,4:6)

X=IA*b

