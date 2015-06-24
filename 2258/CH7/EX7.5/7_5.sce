clc();
clear;
// To calculate the concentration of holes and electrons 
mew_n=1300*10^-4;   //in m^2/Vs
mew_p=500*10^-4;   //in m^2/Vs
sigma=3*10^4;   //conductivity in ohm-1 m-1
e=1.6*10^-19;
N=sigma/(e*mew_n);
ni=1.5*10^16;    //per m^3
p=(ni^2)/N;
P=sigma/(e*mew_p);
n=(ni^2)/P;
printf("concentration of electrons in n-type per cubic metre are");
disp(N);
printf("concentration of holes in n-type per cubic metre are");
disp(p);
printf("concentration of electrons in p-type per cubic metre are");
disp(n);
printf("concentration of holes in p-type per cubic metre are");
disp(P);
