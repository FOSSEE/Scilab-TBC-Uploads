//Example No. 3.2
clc;
clear;
close;
format('v',8);

//Given Data : 
n=0.1;//teeth ratio
ETAg=90/100;//efficiency
J0=0.4;//Kg-m^2
J1=10;//Kg-m^2
TL=50;//N-m
N=1400;//speed in rpm

//Solution : 
J=J0+n^2*J1;//Kg-m^2
T=n*TL/ETAg;//N-m
MotorSpeed=2*%pi*N/60;//rad/sec
Pdev=MotorSpeed*T;//Watt
disp(J,"Equivalent Inertia in Kg-m^2 : ");
disp(T,"Load Torque refered to motor side in N-m : ");
disp(Pdev,"Power developed by motor in watt : ");
