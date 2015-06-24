//Example 3.60 capacitance and resistance 
clc;
clear;
close;
r2=1000;//ohm
w=7500;//
c4=0.0115;//micro-F
r4=140;//ohms
r3=1000;//ohms
x=(1+(w^2*(c4*10^-6)^2*(r4^2)));//
r1=((r2*x)/(r3*r4*w^2*(c4*10^-6)^2));//ohms
c1=((r3/r2)*(c4*10^-6))/x;//F
disp(r1*10^-3,"resistance is ,(k-ohm)=")
disp(c1*10^6,"capacitance is,(micro-F)=")
