//clc();
clear;
//To determine the specific heat per Kmol and highest lattice frequency
T=20;         //specific heat
Td=1850;          //numerical temperature
K=1.38*10^-23;
N=6.02*10^26;
R=K*N;
a=%pi^4;
b=12*a*R*T^3;
Cv=b/(5*Td^3);
printf("specific heat in Joule/kmol-k is");
disp(Cv);
h=6.626*10^-34;
Vd=(K*Td)/h;
printf("highest lattice frquency in sec -1 is");
disp(Vd);
