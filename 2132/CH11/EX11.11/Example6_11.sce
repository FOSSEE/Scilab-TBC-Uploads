//Example 6.11
clc;
clear;
close;
format('v',8);
//Given data :
g=9.81;//constant
Cd=0.6;//Coefficient of discharge
B=1.3;//meter
H1=6-(1.8+1.5);//meter
H2=6-1.5;//meter
Q=2/3*Cd*B*sqrt(2*g)*(H2^(3/2)-H1^(3/2));//m^3/sec
disp(Q,"Discharge through the orifice in m^3/sec : ");
