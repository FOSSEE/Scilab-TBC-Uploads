//Example 3.64:permittivity and power factor
clc;
clear;
close;
r3=350;//ohms
f=50;//Hz
r2=250;//ohms
c3=0.4;//micro-F
c4=100;//pF
r1=((r2*c3*10^-6)/(c4*10^-12));//ohms
c1=((c4*10^-12)*(r3/r2));//F
l=5;//mm
l1=10;//cm
e=((c1*l*10^-3)/((%pi/4)*(l1/100)^2));//
pf=r1*2*%pi*f*c1;//
disp(e,"permittivity is,=")
disp(pf,"power factor is,=")
