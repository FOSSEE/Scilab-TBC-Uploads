clc
p=260*10^5; //Pa
T=288; //K
pc=33.94*10^5; //Pa
Tc=126.2; //K
R=8314/28;

pr=p/pc;
Tr=T/Tc;
Z=1.08;

rho=p/Z/R/T;
disp("Density of N2=")
disp(rho)
disp("kg/m^3")