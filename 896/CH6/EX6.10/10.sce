clc
//Example 6.10
//Calculate the pressure difference created due to expansion and contraction
rho=62.3//lbm/ft^3
K=1.5//dimentionless
v=13//ft/s
//1 ft = 12 in
//1 lbf.s^2 = 32.2 lbm.ft
dp=rho*K*(v^2/2)/32.2/144//lbf/in^2
printf("The pressure drop due to expansion and contraction is %f lbf/in^2",dp);