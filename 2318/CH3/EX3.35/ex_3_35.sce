//Example 3.35:unknown resistance
clc;
clear;
close;
P=100.24;//ohms
Q=200;//ohms
S=100.03;//ohms
x=(P/Q)*S*10^-6;//ohms
q=200;//ohms
r=700;//micro ohms
p=100.31;//ohms
y=((q*r*10^-6)/(p+q+(r*10^-6)));//ohms
z=((P/Q)-(p/q));//ohms
R=x+(y*z);//micro ohms
disp(R*10^6,"unknown resistance is ,(micro-ohm)=")
