//to calculate o/p dc voltage

clc;
t=400;
T=t/4;
C=1*10^-6;
v=20;
i=C*100*v/(T);
R=1*10^3;
e_o=i*R;
disp(e_o,'output voltage(V)');