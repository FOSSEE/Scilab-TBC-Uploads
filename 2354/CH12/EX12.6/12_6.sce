//example 12.6
clc; funcprot(0);
// Initialization of Variable
z1=100;
V2=6;
g=9.81;
gamm=9.8*1000;//density
Q=4.72;//flow rate
ht=z1-V2^2/2/g;
Wtdot=gamm*Q*ht/1000;
disp(Wtdot,"power output in kW");
clear()
