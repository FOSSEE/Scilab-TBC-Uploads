clc
//Initialization of variables
clear
mass=4000 //kg/m^2
Patm=1.013*10^5 //pa
g=9.807
M=28
R=8.3143*10^3
T=303 //K
P1=800*10^3 //pa
//calculations
Ps=Patm+mass*g
n=1/M
V1=n*R*T/P1
W=Ps*(2*V1)
//results
printf("Work done on the surroundings = %d J",W)
