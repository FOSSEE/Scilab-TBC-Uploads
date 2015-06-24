//example 12.1
clc; funcprot(0);
// Initialization of Variable
//for a sample value of theta=45degrees
pi=3.14;
rho=1.94;
A=0.06;//area
V=10.0;//velocity
theta=pi*45/180;
Fax=-rho*A*V^2*(1-cos(theta));
disp(Fax,"resultant force in x direction in lbf");
Fay=rho*A*V^2*sin(theta);
disp(Fay,"resultant force in y direction in lbf");
clear()
