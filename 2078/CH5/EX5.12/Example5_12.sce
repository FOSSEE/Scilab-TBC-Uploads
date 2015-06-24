//Exa 5.12
clc;
clear;
close;
//Given data :
P=50*10^6;//W
f=50;//Hz
l=150;//km
pf=0.8;//power factor
VRL=110*10^3;//Volt
VR=VRL/sqrt(3);//Volt
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
R=0.1*l;//ohm
XL=0.5*l;//ohm
Z=R+%i*XL;//ohm
IR=P/(sqrt(3)*VRL*pf);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
Y=3*10^-6*l;//S
ICR=1/2*%i*Y*VR;//A
IL=IR+ICR;//A
VS=VR+IL*Z;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end line to line voltage(kV) :");
