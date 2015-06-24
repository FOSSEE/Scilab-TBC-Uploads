//ill-conditioned system
//example 7.12
//page 278
clc;clear;close;
//the original equations are 2x+y=2    2x+1.01y=2.01
A1=[2 1;2 1.01];
C1=[2;2.01];
x1=1;y1=1//approximate values
A2=[2 1;2 1.01];
C2=[3;3.01];
C=C1-C2;
X=A1^-1*C;
x=X(1,1)+x1;
y=X(2,1)+y1;
printf(' the exact solution is X=%f \t  Y=%f',x,y);
