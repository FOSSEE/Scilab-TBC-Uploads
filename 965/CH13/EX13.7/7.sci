clc;
clear all;
disp("Mass transfer rate")
L=25;//m
r=3.5/2000;//m
pA1=1.01325*10^5;//atm
pA2=0;//atm
D=0.3*10^(-4);// m^2/s
D=D*3600;// m^2/h
T=27+273;//K
G=8314;
A=3.1416*r*r;//m^2

Na=(D*A)/(G*T)*(pA1-pA2)/L;
disp("kg mole/h",Na,"Rate of diffusion Na =")

MNH3=17;
Mair=29;
NNH3=Na*MNH3;
disp("kg/h",NNH3," mass flow rate of NH3 =")

Nair=Na*Mair;
disp("kg/h",Nair," mass flow rate of air =")
