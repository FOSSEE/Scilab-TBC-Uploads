//Exa 10.4
clc;
clear;
close;
//given data
format('v',9);
d=3;// in mm
d=d*10^-3;// in meter
T=25;// in °C
T=T+273;// in K
D= 0.4*10^-4;// in m^2/s
R= 8314;
P_A1=1;// in atm
P_A1=P_A1*10^5;// in w/m^2
P_A2=0;
C_A2=0;
x2= 15;// in meter
x1= 0;
A= %pi/4*d^2;
M_A= D*A/(R*T)*(P_A1-P_A2)/(x2-x1);// in kg mole/sec
N_B= M_A;
M_B= M_A*29;// in kg/sec
disp(N_B,"Value of N_B in kg mole/sec") 
disp(M_B,"Value of M_B in kg /sec") 
