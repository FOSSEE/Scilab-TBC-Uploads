//Example 3.43:resistance
clc;
clear;
close;
Q=100.5;//ohms
M=300;//ohms
S=0.0045;//ohms
x=(Q/M)*S;//ohms
r=0.1;//ohms
m=300.25;//micro ohms
q=100.6;//ohms
y=((r*m)/(r+m+q));//ohms
z=((Q/M)-(q/m));//ohms
R=x+(y*z);//milli ohms
disp(R*10^3,"unknown resistance is ,(milli-ohm)=")
