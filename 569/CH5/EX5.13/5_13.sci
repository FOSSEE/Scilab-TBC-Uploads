// calculate the percentage change in value of the gauge resistance
clc;
s=100*10^6;
E=200*10^9;
strain=s/E;
Gf=2;
r_perunit=Gf*strain*100;
disp(r_perunit,'Percentage change in resistance=')
