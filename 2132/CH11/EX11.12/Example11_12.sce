//Example 11.12
clc;
clear;
close;
format('v',7);
//Given data :
Cd=0.60;//Coeff of discharge
L=36;//meter
H=1.1;//meter
A=50;//m^2
g=9.81;//gravity acceleration
Qmax=1.705*Cd*L*H^(3/2);//m^3/s
disp(Qmax,"Maximum Discharge in m^3/sec : ");
Va=Qmax/A;//m/s(velocity of approach)
Q=1.705*Cd*L*[(H+Va^2/2/g)^(3/2)-(Va^2/2/g)^(3/2)];//m^3/s
disp(Q,"New discharge considering velocity of approach in m^3/sec : ");
