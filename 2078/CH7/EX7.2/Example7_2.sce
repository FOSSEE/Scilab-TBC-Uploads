//Exa 7.2
clc;
clear;
close;
//Given data :
Ph=3;//phase
V=220;//kV
f=50;//Hz
r=1.2;//cm
d=2;//meter
mo=0.96;//Irregularity factor
t=20;//degree C
T=t+273;//K
b=72.2;//cm
go=21.1;//kV rms/cm
del=3.92*b/T;//Air density factor
Vdo=go*del*mo*r*log(d*100/r);//in kV
Vdo_line=sqrt(3)*Vdo;//in kV
disp(round(Vdo_line),"Disruptive critical voltage from line to line(kV rms) : ");
