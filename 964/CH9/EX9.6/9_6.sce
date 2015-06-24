clc;
clear;
a11=1;
a12=2;
b1=10;
a21=1.1;
a22=2;
b2=10.4;
x1=(b1*a22-a12*b2)/(a11*a22-a12*a21);
x2=(b2*a11-a21*b1)/(a11*a22-a12*a21);
disp("For the original system:")
disp(x1,"x1=")
disp(x2,"x2=")
a21=1.05;
x1=(b1*a22-a12*b2)/(a11*a22-a12*a21);
x2=(b2*a11-a21*b1)/(a11*a22-a12*a21);
disp("For the new system:")
disp(x1,"x1=")
disp(x2,"x2=")