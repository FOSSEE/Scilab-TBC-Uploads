//Example 3.39:resistance and inductance
clc;
clear;
close;
r2=1000;//ohms
r3=15000;//ohms
r4=500;//ohms
c4=1.59;//micro farads
f=50;//Hz
w=2*%pi*f;//
l=((r2*r3*c4*10^-6)/((1+(w^2*(c4*10^-6)^2*r4^2))));//H
r=((r2*r3*r4*w^2*(c4*10^-6)^2)/((1+(w^2*(c4*10^-6)^2*r4^2))));//ohms
disp(l,"inductance is ,(H)=")
disp(r,"resistance is,(ohm)=")
//resistance is calculated wrong in the textbook
