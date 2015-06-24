//Calculate Pressure of air source
clc;
T=273+25;
P=99.22*10^3;
R=288;
df=P/(R*T);
dm=0.82*996;
g=9.81;
h=200*10^-6;
P1=g*h*(dm-df)*10^3;
Pa=P+P1;
disp(Pa,'Pressure of air source(N/m2)')
