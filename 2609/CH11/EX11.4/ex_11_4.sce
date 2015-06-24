////Ex 11.4
clc;
clear;
close;
format('v',5);
R1=10;//kohm
R2=10;//kohm
k=1.38*10^-23;//J/K
T=298;//K
q=1.6*10^-19;//C
Kdash=k*T/q;//Kdash=k*T/q assumed for temporary calculation
disp("Output Voltahe, Vout(V) is -R1*(log("+string(-1/Kdash)+"*Vin)^-1");
