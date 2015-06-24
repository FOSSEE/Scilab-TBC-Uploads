//Example 6.15
clc;
clear;
close;
format('v',5);
//Given data :
g=9.81;//constant
Cd=0.6;//Coefficient of discharge
B=1600/1000;//meter
D=1250/1000;//meter
ao=1.6*1.25;//m^2
H1=2+1.25;//meter
H2=2;//meter
H=H1-0.8;//meter
Q=2/3*Cd*B*sqrt(2*g)*(H^(3/2)-H2^(3/2))+Cd*B*(H1-H)*sqrt(2*g*H);//m^3/sec or Cumec
disp(Q,"Discharge through the orifice in Cumec : ");
