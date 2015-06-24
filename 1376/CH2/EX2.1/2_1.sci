//2.1
clc;
N=400;
a=4*10^-4;
MUo=4*%pi*10^-7;
MUr=800;
l=0.3;
L=(MUo*MUr*a*N^2)/l;
printf("Self inductance of the coil=%.3f H",L)
