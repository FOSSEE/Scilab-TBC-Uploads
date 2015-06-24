//cubic spline method
//example 8.18
//page 331
clc;clear;close;
//after arranging and forming equation 
A=[10 -1 0 24;0 16 -1 -32;1 20 0 16;0 1 26 -24];
C=[36;-12;24;-9];
X=A^-1*C;
printf(' Y1=%f\n\n',X(4,1));
printf(' the error in the solution is :%f',abs((2/3)-X(4,1)))