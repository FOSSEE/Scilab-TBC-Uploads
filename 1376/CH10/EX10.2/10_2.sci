//10.2
clc;
N1=2500;
I1=2;
l1=1;
a2=3*10^-4;
Permability_absolute=4*%pi*10^-7;
phi2=Permability_absolute*N1*I1*a2/(l1);
N2=50;
theta=1;
l=10;
K=2*N2*phi2/(theta*l);
a=60*%pi*10^-7;
printf("Galvanometer Constant=%.6f Wb turns/division",K)


