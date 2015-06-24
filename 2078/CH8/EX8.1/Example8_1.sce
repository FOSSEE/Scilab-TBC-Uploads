//Exa 8.1
clc;
clear;
close;
format('v',6);
//Given data :
f=50;//Hz
hor_con=1.2;//horizontal configuration spacing in m
x=0.85;//telephone line location below power line in meter
I=120;//current in power line in A
d=0.4;//spacing between conductors in meter
dAD=sqrt(x^2+((hor_con+d)/2)^2);//m
dAC=sqrt(x^2+((hor_con-d)/2)^2);//m
dBD=dAC;//m
dBC=dAD;//m
M=d*log(sqrt(dAD*dBC/dAC/dBD));//mh/km
Vm=2*%pi*f*M*10^-3*I;//V
disp(Vm,"Voltage induced per Km in the line in Volt :");
