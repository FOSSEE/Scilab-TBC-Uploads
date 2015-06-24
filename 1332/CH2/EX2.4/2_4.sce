//Example 2.4
//Solving Simultaneous Linear Equation
//Page 36
clc;close;clear;
//eq1= 5x-331y=3.5
//eq2= 6x-397y=5.2

A=[5,-331;6,-397];
B=[3.5;5.2];
C=inv(A)*B;      //finding value by multiplying inverse with values
disp(C(1,1),'Value of x=');
disp(C(2,1),'Value of y=');