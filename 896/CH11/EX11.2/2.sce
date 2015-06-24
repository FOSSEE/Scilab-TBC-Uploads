clc
//Example 11.2
//Calculate the pressure gradient
Vs=2//ft/s
dp=0.03//in (diameter of particle)
rho=62.3//lbm/ft^3
eta=0.33//dimentionless
//let DP denote pressure gradient
//1 ft = 12 in
//1 lbf.s^2 = 32.2lbm.ft
DP=1.75*rho*Vs^2*(1-eta)/((dp/12)*eta^3*32.2*144)//psi/ft
printf("The pressure gradient is %f psi/ft",DP);