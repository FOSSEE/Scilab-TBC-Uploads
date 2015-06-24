clc
clear
//Initialization of variables
W=7500 //pounds
rho=0.00230
V=175*5280/3600 //ft/s
B=50
A=350 //ft^2
//calculations
Cl=W/(A*0.5*rho*V^2)
Cd=0.03
Fd=Cd*A*0.5*rho*V^2 
hp=Fd*V/550
//results
printf("Horsepower required = %d hp",hp)
