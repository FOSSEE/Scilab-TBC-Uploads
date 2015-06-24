clc
//Initialization of variables
A=2 //m^2
U=100*1000/3600 //m/s
Cd=0.32
rho=1.24
//calculations
Fd= Cd*0.5*rho*U^2 *A
P= Fd*U
//results
printf("Power required = %.1f kW",P/1000)
