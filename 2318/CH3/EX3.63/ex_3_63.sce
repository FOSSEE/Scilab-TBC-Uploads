//Example 3.63:resistance and inductance
clc;
clear;
close;
r2=50;//ohms
r3=100;//ohms
r4=100;//ohms
r=2500;//ohms
c=1;//micro farads
rX=((r2*r3)/r4);//ohms
l=(((c*10^-6*r2)/r4)*((r*(r3+r4))+(r3*r4)));//H
disp(rX,"resistance is ,(ohm)=")
disp(l,"inductance is,(H)=")
