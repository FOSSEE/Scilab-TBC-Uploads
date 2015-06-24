//Example 3.59: capacitance and resistance 
clc;
clear;
close;
e1=5000;//volts
r1=500;//ohm
l1=0.18;//H
r2=1000;//ohm
r4=r2;//ohms
x=(r1/(e1^2*l1));//
y=((r2*r2)/(1+((e1^2)*x^2)));//
c3=((l1/y));//F
r3=(x/c3);//
disp(c3*10^6,"capacitance is,(micro-F)=")
disp(r3,"resistance is,(ohm)=")
