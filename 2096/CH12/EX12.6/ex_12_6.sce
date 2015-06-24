
//Example 12.6 // difference 
clc;
clear;
close;
//given data :
Q=0.015; // in m^3/s
D0=0.1; // in m
D1=0.2; // in m
Cc=0.6;
Cd=0.6;
g=9.81; 
AO=((%pi/4)*D0^2);//in m^2
A1=((%pi/4)*D1^2);//in m^2
K=Cd/sqrt(1-(Cc*(AO/A1))^2);
S=sqrt((2*g)/(g*1000));
DP=((Q/(K*AO*S)))^2;//
disp("difference in thr pressure head is "+string(DP)+" N/m^2 or "+string(DP/9739.45)+" m of water")
