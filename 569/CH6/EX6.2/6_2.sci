// calculating the closed loop gain
clc;
Rf=10;
R1=1;
Avol=200000;
A=-(Rf/R1)*(1/[1+(1/Avol)*((R1+Rf)/R1)]);
disp(A,'closed loop gain=')