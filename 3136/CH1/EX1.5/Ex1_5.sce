clear all; clc;
//This numerical is Ex 1_3E,page 11.
H=295//net head in ft
Q=148//water flow rate
n=1800//rpm
E=0.87//efficiency
a=62.4//product of density and accelaration due to gravity
omega=(n*2*%pi)/60
dp=a*H
printf('The pressure is %g lb/ft^2',dp)
Ps=E*Q*dp
printf('\n Output power is equal to %0.3f lb-ft/s',Ps)
disp("The output output power can also be written as 2.37*10^6 lb-ft/s")
disp("Output power in terms of horsepower is given by 4309hp.")
Psr=2370000//rounded off value of Ps
Torque=Psr/omega
printf(' The output torque is %g lb-ft.',Torque)
disp("The output torque can also be written as 12.57*10^3 lb-ft")

