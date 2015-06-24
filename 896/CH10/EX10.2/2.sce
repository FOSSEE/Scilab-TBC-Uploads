clc
//Example 10.2
//Calculate the maximum elevation above the lowest water level in sump at which pump inlet can be placed
P1=3.72//psia 0r lbf/in^2
P2=14.5//psia 0r lbf/in^2
dP=P2-P1//psia 0r lbf/in^2
rho=61.3//lbm/ft^3
g=32.2//ft/s^2
//1 ft = 12 in
//1 lbf.s^2 = 32.2 lbm.ft
h_loss=4//ft
v=10//ft/s
h_max=(dP/rho/g)*144*32.2-(v^2/2/g)-h_loss//ft
printf("the maximum elevation above the lowest water level in sump at which pump inlet can be placed is %f ft",h_max);