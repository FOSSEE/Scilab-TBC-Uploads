clc
N=60; //rpm
r2=0.25; //m
g=9.8; //m/s^2

w=2*%pi*N/60;
dz_12=(w*r2)^2/2/g; // dz_12=z2-z1
c=w*r2^2;
dz_23=c^2/2/g/r2^2;// dz_23=z3-z2

dz_13=dz_23+dz_12;
disp("Total depression =")
disp(dz_13)
disp("m")