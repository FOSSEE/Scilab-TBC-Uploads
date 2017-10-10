//Example 11_4
clc;clear;funcprot(0);
//Properties
rho=999.1;//kg/m^3
mu=1.138*10^-3;// kg/m.s
//Given values
D=0.022;// m
V=4;// m/s
L=30;// m
A=L*D;// m^2

//Calculation
Re=(rho*V*D)/mu;
//The drag coefficient corresponding to the value Re from Fig. 11–34
C_d=1;
F_d=C_d*A*rho*(V^2/2);
printf('The drag force acting on the pipe,F_d =%0.0f N\n',F_d);
disp('The drag force acting on the pipe,F_d ~=5300 N');
