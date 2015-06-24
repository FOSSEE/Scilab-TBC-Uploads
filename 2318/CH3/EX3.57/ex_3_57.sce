//Example 3.57: resistance , capacitance AND POWER FACTOR
clc;
clear;
close;
f=50;//Hz
r2=120;//ohms
c3=0.4;//micro-F
c4=106;//pF
r3=318;//ohms
r1=((r2*c3*10^-6)/(c4*10^-12));//ohms
c1=((c4*10^-12*r3)/r2);//pF
pf=((r1)/(sqrt(r1^2+(1/(2*%pi*f*c1)^2))));//
disp(round(r1*10^-3),"resistance is,(k-ohm)=")
disp(round(c1*10^12),"capacitance is ,(p-F)=")
disp(pf,"power factor is,=")

