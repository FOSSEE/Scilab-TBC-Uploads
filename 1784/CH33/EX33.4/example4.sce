//chapter 33
//example4
clc
//given
N=100 // turns in circular coil
i=0.10 //in amp
B=1.5// in wb/m2
a=5*10^-2 //radius of coil in meter
u=N*i*%pi*(a^2) //u is dipole moment
U1=(-u*B*cos(0))
U2=-u*B*cos(%pi)
W=U2-U1
disp(W,"  W0rk required to turn current in an  external magnetic field from theta=0 to theta=180 degree in joule is ")
