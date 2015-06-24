clc
//Initialization of variables
disp("from critical constant tables")
pc=482//psia
Tc=227 //R
vc=1.44 //ft^3/lbm mol
P=600 //psia
T=310 //R
//calculations
Pr=P/pc
Tr=T/Tc
disp("From Z tables,")
Z=0.83
v=Z*55.12*T/(P*144)
rho=1/v
//results
printf("Density = %.1f lbm/ft^3",rho)
