//Example 3.54: resistance and inductance
clc;
clear;
close;
r2=16800;//ohms
r3=950;//ohms
r4=1000;//ohms
f=50;//Hz
c3=1.57;//micro-F
x=((r2*r3*r4*(2*%pi*f)^2*(c3*10^-6)^2));//
y=(1+(((2*%pi*f)^2)*(c3*10^-6)^2*r3^2));//
r1=x/y;//ohms
l1=((r2*r4*c3*10^-6)/y);//
disp(r1,"resistance is,(ohm)=")
disp(l1,"inductance is,(H)=")
//resistance is wrong in the textbook
