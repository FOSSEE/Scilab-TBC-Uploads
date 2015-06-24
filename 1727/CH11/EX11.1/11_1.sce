clc
//Initialization of variables
d=1.2 //m
w=1 //m
U=60*1000/3600 //m/s
nu=1.5e-5 //m^2/s
Cd=0.4
rho=1.22 //kg/m^3
//calculations
Rn=U*d/nu
A=d*w
Fd= Cd*0.5*rho*U^2 *A
M= 0.5*Fd
//results
printf("Bending moment = %.2f h^2 N m",M)
