//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_15
clc;
clear;
P=1000;
N=1500;//Speed in rpm
R2=0.06;// Resistance in ohm
I2=125.6;//Current in A
T=1.5;//Time in sec
N1=1420;//Speed in rpm
S=(R2*P)/N;
K=((S/(2*%pi*N))*(I2)^2*T)/(N1)^2;
T1=K*(N1)^2;
N2=750;//Speed in rpm
S0=0.489;//No load slip
S2=1.12;//load slip
T2=K*(N2)^2;
X1=(T2*S)/T1;
A=acos(-S0/S2);
Alpha=(A*180)/%pi;
disp(Alpha,"The firing angle in deg is:")
