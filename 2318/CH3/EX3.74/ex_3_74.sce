//Example 3.74.a:resistance and inductance
clc;
clear;
close;
r2=500;//ohms
r3=300;//ohms
r4=500;//ohms
r=150;//ohms
c=2.5;//nano farads
rX=((r2*r3)/r4);//ohms
l=(((c*10^-9*r3)/r4)*((r*(r2+r4))+(r2*r4)));//H
disp(rX,"resistance is ,(ohm)=")
disp(l*10^2,"inductance is,(mH)=")
