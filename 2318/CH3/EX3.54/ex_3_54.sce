//Example 3.54: resistance and capacitance
clc;
clear;
close;
r2=100;//ohms
r4=1000;//ohms
r1=50;//ohms
f=50;//Hz
l=0.1;//H
r3=((r2*r4)/r1)+((r1*r2*r4)/((2*%pi*f)^2*l^2));//ohms
c3=r1/((2*%pi*f)^2*l*r3);//F
disp(r3,"resistance is,(ohm)=")
disp(c3*10^6,"capacitance is ,(micro-F)=")
//resistance is wrong in the textbook
