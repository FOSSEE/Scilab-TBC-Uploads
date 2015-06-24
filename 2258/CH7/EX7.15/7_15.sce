clc();
clear;
// To calculate the conductivity of intrinsic silicon
ni=1.5*10^16;
e=1.6*10^-19;
mew_e=0.13;
mew_h=0.05;
sigma=ni*e*(mew_e+mew_h);
printf("conductivity is %f ohm-1 m-1",sigma);
M=28.1;    //atomic weight of Si
d=2.33*10^3;   //density in kg/m^3
v=M/d;
N=6.02*10^26;
N1=N/v;
printf("number of Si atoms per m^3 is");
disp(N1);
//1 donor type impurity is added to 1 impurity atom
ND=N1/(10^8);
p=(ni^2)/ND;
sigma_exd=ND*e*mew_e;
printf("conductivity for donor type impurity is %f ohm-1 m-1",sigma_exd);
//1 acceptor type impurity is added to 1 impurity atom
Na=N1/(10^8);
n=(ni^2)/Na;
sigma_exa=Na*e*mew_h;
printf("conductivity for acceptor type impurity is %f ohm-1 m-1",sigma_exa);
