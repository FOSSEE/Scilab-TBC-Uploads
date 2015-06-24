clc
//Initialization of variables
Cd=0.45
rho=0.0725/32.2
V=88 //fps
A=8*10
//calculations
Fd=Cd*rho*V^2 /2 *A
Drag2=23
D=Fd-Drag2
//results
printf("Pressure drag = %d lb",D)
