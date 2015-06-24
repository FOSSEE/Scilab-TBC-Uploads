clc
//Example 5.2
//calculate velocity of air coming out from the nozzle
T=528;//R Rankine scale
R=10.73;//psi.ft^3/R/lbmol universal gas constant
p=14.71;//psi
p_atm=14.7;//psi
M=29;//lbm/lbmol
//considering the velocity at the start of the nozzle is negligible
v=((2*R*T/p/M)*(p-p_atm)*(144*32.2))^0.5;//ft/s
printf("Velocity of the air flowing out of the pipe %f ft/s",v);