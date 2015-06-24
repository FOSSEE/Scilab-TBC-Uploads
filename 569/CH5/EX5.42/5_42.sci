// Calculate the strain, charge and capacitance
clc;
A=25*10^-6;
F=5;
P=F/A;
d=150*10^-12;
e=12.5*10^-9;
g=d/(e);
t=1.25*10^-3;
Eo=(g*t*P);
strain=P/(12*10^6);
Q=d*F;
C=Q/Eo;
disp(strain,'strain=')
disp(Q,'charge(C)=')
disp(C,'Capacitance(F)=')