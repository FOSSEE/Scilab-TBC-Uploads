clc
//Initialization of variables
k=1.4
R=287
T=249 //K
v=600 //m/s
d=0.2 //m
//calculations
c=sqrt(k*R*T)
M=v/c
Cd=0.62
rho=47.22*10^3 /(R*T)
Fd=Cd*rho*v^2 /2 *%pi*d^2 /4
//results
printf("Drag = %d N",Fd)
