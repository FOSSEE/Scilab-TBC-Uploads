//chapter 35
//example1
clc
//given
l=1.0 //length of solenoid in meter
r=3*10^-2 //radius of solenoid in meter
n=200*10^2 //number of turns in solenoid per meter
u0=4*%pi*10^-7 //in weber/amp-m
i=1.5 //current in amp
N=100 //no.of turns in a close packed coil placed at the center of solenoid
d=2*10^-2 //diameter of coil in meter
delta_T=0.050 //in sec
//(A)
B=u0*i*n
disp(B,"Magnetic field at center in wb/m2 is")
//(B)
A=%pi*(d/2)^2
Q=B*A
disp(Q,"Magnetic flux at the center of the solenoid in weber is")
delta_Q=Q-(-Q)
E=-(N*delta_Q/delta_T)
disp(E,"Induced EMF in volts is ")
