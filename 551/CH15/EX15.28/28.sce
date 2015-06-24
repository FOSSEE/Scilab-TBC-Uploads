clc
r1=0.05; //m
r2=0.1; //m
T1=400; //K
T2=300; //K
e1=0.5;
e2=0.5;
F_12=1;
a=5.67*10^(-8);
//A1/A2=r1/r2

Q=a*(T1^4-T2^4)/((1-e1)/e1+1/F_12+(1-e2)/e2*r1/r2);
disp("heat transfer rate per m2 area by radiation")
disp(Q)
disp("W/m^2")