clc
//Example 10.6
//Calculate the pump head
rho=62.3//lbm/ft^3
g=32.2//ft/s^2
v=18.46//ft/s
//1 lbf/s^2 = 32.2 lbm.ft
h=(v^2/2)*32.2/rho/g//ft
printf("The pump head is %f ft",h);