clc
//Example 19.2
//Calculate the power required to run an impeller
D_tank=3//ft
D_impeller=D_tank/3//ft
N=4//rps
v=1.077*10^(-5)//ft^2/s
R_impeller=N*D_impeller^2//dimentionless (reynold's number)
//1 lbf.s^2 = 32.2 lbm.ft
//1 hp.s = 550 lbf.ft
rho_water=62.3//lbm/ft^3
P=5*rho_water*N^3*D_impeller^5/32.2/550//hp
printf("The power required to run an impeller is %f hp",P);