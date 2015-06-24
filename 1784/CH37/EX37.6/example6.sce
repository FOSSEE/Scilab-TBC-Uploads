//chapter 37
//example6
clc
//given
n=10*10^2 //turns/m
i=2 //in amp
B=1.0 //in wb/m
u0=4*%pi*10^-7 //in wb/amp-m
//(A)
H=n*i
disp(H,"(A)  Magnetic field strength in amp/m is")
//(B)
M=(B-u0*H)/u0
disp("(B)  Magnetisation is Zero when core is removed")
disp(M,"  Magnetisation when th ecore is replaced in amp/m")
//(C)
disp("(C)  Effective magnetizing current i=i(M,0)=M*(2*%pi*r0/N0)=M/n")
i=M/n
disp(i,"  Effective magnetizing current in amp is")
//D
Km=B/(u0*H)
disp(Km,"(D)  Permeability ")
