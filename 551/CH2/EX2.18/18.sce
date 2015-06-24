clc
A=45*10^(-4); //m^2
P=0.9*10^5; //N/m^2
Patm=1.013*10^5; //N/m^2
L=0.05; //m
dV=300*10^(-6); //m^3
W=P*A*L-Patm*dV;
disp("net work done =")
disp(W)
disp("J")