//chapter 34
//example5
clc
//given
l=1.0 //length of solenoid in meter
d=3*10^-2 //diameter of solenoid in meter
n=5*850 //number of layers and turns of wire
u0=4*%pi*10^-7 //in weber/amp-m
i0=5.0 //current in amp
//(A)
B=u0*i0*n
disp(B,"Magnetic field at center in wb/m2 is")
//(B)
A=%pi*(d/2)^2
Q=B*A
disp(Q,"Magnetic flux at the center of the solenoid in weber is")
