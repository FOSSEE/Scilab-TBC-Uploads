clc;
clear;
//the equations are:
//3*x1+2*x2=18
//-x1+2*x2=2
a11=3;
a12=2;
b1=18;
a21=-1;
a22=2;
b2=2;
x1=(b1*a22-a12*b2)/(a11*a22-a12*a21);
x2=(b2*a11-a21*b1)/(a11*a22-a12*a21);
disp(x1,"x1=")
disp(x2,"x2=")