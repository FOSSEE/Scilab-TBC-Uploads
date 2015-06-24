//Example 3.41:resistance and capacitance
clc;
clear;
close;
r1=140;//ohms
c1=0.0115*10^-6;//F
r2=1000;//ohms
r4=1000;//ohms
w=7500;//
x=((1/(w^2*r1*c1)));//
c3=c1;//
r3=x/c3;//
disp(c3*10^6,"capaciatnce is ,(micro-F)=")
disp(r3*10^-6,"resistance is,(M-ohm)=")
