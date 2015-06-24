clc
//Example 6.12
//Calculate pressure drop due to valves and fittings
K=27.56//deimentionless
rho=62.3//lbm/ft^3
v=13//ft/s
//1 ft = 12 in
//1 lbf.s^2 = 32.2 lbm.ft
dp=rho*K*(v^2/2)/32.2/144//psi
printf("THe pressure drop due to valves and fittings is %d psi",dp);