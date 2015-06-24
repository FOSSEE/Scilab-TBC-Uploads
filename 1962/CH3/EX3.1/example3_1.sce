

//example 3.1 
//page 119
clc; funcprot(0);
// Initialization of Variable
rho=997.1;
pi=3.14;
v=15;//velocity
A=pi*0.3^2/4;
Q=v*A;
disp(Q,"discharge in (m^3/s)");
m=rho*Q;
disp(m,"mass flow rate(kg/s)=");
clear
