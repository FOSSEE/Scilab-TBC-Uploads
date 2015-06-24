//Example 3.72:resistance and inductance
clc;
clear;
close;
r2=100;//ohm
r4=834;//ohm
c3=0.1;//micro-F
l1=r2*r4*c3*10^-3;//mH
c4=0.124;//micro-F
r1=(c3/c4)*r2;//
f=2;//kHz
z1=sqrt(r1^2+(2*%pi*f*10^3*l1*10^-3)^2);//
disp(l1,"inductance is ,(mH)=")
disp(r1,"resistance is,(ohm)=")
disp(z1,"impedence is ,(ohm)=")
