//10.1
clc;
K=0.1*10^-3;
d=60;
N2=200;
phi2=K*d/(2*N2);
a2=25*10^-6;
B=phi2/a2;
N=300;
I=10;
l=0.1;
H=N*I/l;
Permability_absolute=4*%pi*10^-7;
Permability_relative=B/(Permability_absolute*H)
printf("Relative permability of iron=%.2f",Permability_relative)
