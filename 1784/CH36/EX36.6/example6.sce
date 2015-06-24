//chapter 36
//example6
clc
//given
epsilon0=8.9*10^-12//in coul2/nt-m2
E=10^5//elelctric field in volts/meter
B=1 //magnetic field in weber/meter2
u0=4*%pi*10^-7//in weber/amp-m   Mu-not=u0
a=0.1 //side of the cube in meter
V0=a^3 //volume of the cube in meter3
//(a)
U1=epsilon0*E^2*V0/2 //in elelctric field
disp(U1,"(a)Energy required to set up in the given cube on edge in electric field in joules is")
//(b)
U2=(B^2/(2*u0))*V0
disp(U2,"(b)Energy required to set up in the given cube on edge in magnetic field in joules is")
