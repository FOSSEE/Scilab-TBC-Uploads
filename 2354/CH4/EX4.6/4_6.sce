//example 4.6
clc; funcprot(0);
// Initialization of Variable
Tr1=793.0/647.3;
Pr1=22.0/22.09;
Rbar=8314.0;
M=18.02;
T1=793.0;
P1=20.0e6;
pr2=0.69;
v1=0.83*Rbar/M/P1*T1;
disp(v1,"Specific weight in m^3/kg");
vrdash=v1*22.09e6/Rbar*M/647.3;
Tr2=673/647.3;
P2=22.09e6*pr2;
disp(P2/10^6,"Pressure in Mpa");
clear()
