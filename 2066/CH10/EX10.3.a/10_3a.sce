clc
clear
//Initialization of variables
W=7500 //pounds
rho=0.00230
V=175*5280/3600 //ft/s
B=50
//calculations
T=W/(rho*V*B)
//results
printf("Boundary circulation = %d ft^2/s",T)
