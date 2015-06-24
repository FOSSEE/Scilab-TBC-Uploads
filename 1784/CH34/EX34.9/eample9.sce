//chapter 34
//example9
clc
//given
e=1.6*10^-19 //in coul
R=5.1*10^-11 //radius of th enucleus in meter
f=6.8*10^15 //frequency with which elecron circulates in rev/sec
u0=4*%pi*10^-7 //in weber/amp-m
x=0 //x is any point on the orbit, since at center x=0
//(A)
i=e*f
B=u0*i*R^2*0.5/((R^2+x^2)^(3/2))
disp(B,"(A)  Magnetic field at the center of the orbit in wb/m2")
N=1 //no.of turns
A=%pi*R^2
U=N*i*A
disp(U,"(B)  Equivalent magnetic dipole moment in amp-m2 is ")
