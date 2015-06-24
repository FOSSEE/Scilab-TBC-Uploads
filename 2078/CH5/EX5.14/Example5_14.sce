//Exa 5.14
clc;
clear;
close;
//Given data :
f=50;//Hz
l=30;//km
Z=40+%i*125;//ohm
Y=10^-3;//mho
P=50*10^6;//W
VRL=220*10^3;//Volt
VR=VRL/sqrt(3);//Volt
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
IR=P/(sqrt(3)*VRL*pf);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
ICR=1/2*%i*Y*VR;//A
IL=IR+ICR;//A
VS=VR+IL*Z;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end line to line voltage(kV) :");
