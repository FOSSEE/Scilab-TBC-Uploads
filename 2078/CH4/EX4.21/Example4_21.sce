//Exa 4.21
clc;
clear;
close;
//Given data :
r=2.5/2*10^-2;//m
VL=132;//KV
epsilon_o=8.85*10^-12;//permitivity
f=50;//Hz
dRRdash=sqrt(7^2+(4+4)^2);//m
dBBdash=dRRdash;//m
dYYdash=9;//m
DSR=sqrt(r*dRRdash);//m
DSY=sqrt(r*dYYdash);//m
DSB=sqrt(r*dBBdash);//m
Ds=(DSR*DSB*DSY)^(1/3);//m
dRY=sqrt(4^2+(4.5-3.5)^2);//m
dRYdash=sqrt((9-1)^2+4^2);//m
dRdashY=sqrt((9-1)^2+4^2);//m
dRdashYdash=sqrt(4^2+(4.5-3.5)^2);//m
DRY=(dRY*dRYdash*dRdashY*dRdashYdash)^(1/4);//m
DYB=((dRY*dRYdash)^2)^(1/4);//m
DBR=((8*7)^2)^(1/4);//m
Dm=(DRY*DYB*DBR)^(1/3);//m
C=2*%pi*epsilon_o/log(Dm/Ds);//F/m
C=C/10^-3;//F/km
X=1/(2*%pi*f*C);//ohm
disp(X/1000,"Capacitive reactance too neutral(kohm) : ");
Vph=VL*1000/sqrt(3);//Volt
Ic=2*%pi*f*C*Vph;//A
disp(Ic,"Charging current(A/km)");
