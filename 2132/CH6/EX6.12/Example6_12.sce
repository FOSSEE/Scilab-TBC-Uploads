//Example 6.12
clc;
clear;
close;
format('v',7);
//Given data :
g=9.81;//constant
Cd=0.62;//Coefficient of discharge
B=2;//meter
H1=3;//meter
H2=3+1.5;//meter
Q=2/3*Cd*B*sqrt(2*g)*(H2^(3/2)-H1^(3/2));//m^3/sec or cumec
disp(Q,"Discharge through the orifice in cumec : ");
