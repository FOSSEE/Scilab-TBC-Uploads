clc
clear
//Initialization of variables
p=20 //psia
R0=1545 
t=460 +100 //R
M=28
//calculations
v=R0*t/(p*144*M)
rho=1/v
//results
printf("density of nitrogen = %.4f lbm/ft^3",rho)
