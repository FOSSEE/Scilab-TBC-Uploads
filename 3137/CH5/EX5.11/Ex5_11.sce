//Initilization of variables
k=20 //lb/in
w=20 //lb/ft
x1=4 //ft
x2=10 //ft
x3=8 //ft
x4=6 //ft
x5=9 //ft
F1=1920 //lb.rad
F2=3360 //lb.rad
//calculations
theta=(w*x2*x5)/(F1*x3+F2*(x3+x4)) //radians
FB=F1*theta
FC=F2*theta
A=(w*x2)-FB-FC
//Result
clc
printf('The force in spring B is %flb and spring C is %f lb and the reaction at A is %f lb',FB,FC,A)
