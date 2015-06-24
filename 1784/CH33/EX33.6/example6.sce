//chapter 33
//example6
clc
//given
m=9.1*10^-31 // in kg
v=1.9*10^6 //in m/sec
q=1.6*10^-19 //charge in coul
B=1.0*10^-4 //in wb/m2
//calculations
//(A)
r=m*v/(q*B)
disp(r,"(A)  Orbit radius in meter is")
//(B)
f=q*B/(2*%pi*m)
disp(f,"(B)  Cyclotron frequency in rev/sec is")
//(C)
T=1/f
disp(T,"(C)  Period of revolution in sec is")
