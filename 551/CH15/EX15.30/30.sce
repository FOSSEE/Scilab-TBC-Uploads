clc
r1=0.105; //m
r2=0.15; //m
T1=120; //K
T2=300; //K
e1=0.03;
e2=0.03;
h_fg=209.35; //kJ/kg
a=5.67*10^(-8);
F_12=1;

Q=4*%pi*r1^2*a*(T1^4-T2^4)/( ((1-e1)/e1) + 1/F_12 + ((1-e2)/e2)*r1^2/r2^2);

rate=-Q*3600/h_fg/1000;
disp("Rate of evaporation = ")
disp(rate)
disp("kg/h")