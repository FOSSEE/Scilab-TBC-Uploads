clc;
clear all;

disp("rate of heat loss")

r1=60;//mm radius of pipe
r2=r1+60;//mm radius of insulation1
r3=r2+40;//mm radius of insulation2
kA=0.24;// W/(m*C)
kB=0.4;// W/(m*C)
thf=65;// degree C
tcf=20;// degree C
hhf=60;// W/(m^2*C)
hcf=12;// W/(m^2*C)
L=60;//

Q=2*3.1416*L*(thf-tcf)/(1/(hhf*r1*10^(-3))+(log (r2/r1))/kA+(log (r3/r2))/kB+1/(hcf*r3*10^(-3)));

disp("W",Q,"rate of heat loss Q =  ")


