//Example 15.9
clc;

C=0.01*10^-6;       //in farads
R=15*10^3;          //in ohms
f=2500;             //in Hz
x=2*%pi*f*C*R;
phi=2*atan(x);
printf('\nPhase angle phi = -%d deg\n',phi*180/%pi)