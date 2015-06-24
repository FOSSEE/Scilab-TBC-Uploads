//Example 11.10
clc;
clear;
close;
format('v',7);
//Given data :
Cd=0.62;//Coeff of discharge
H=250/1000;//meter
L=400/1000;//meter
g=9.81;//gravity acceleration
Q=2/3*Cd*sqrt(2*g)*L*H^(3/2);//m^3/s or cumec
disp(Q,"Discharge in cumec : ");

