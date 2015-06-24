clc
//Example 5.7
//Calculate velocity of air flowing through an air duct
dP=0.05//psi or lbf/in^2
rho_air=0.075//lbm/ft^3
//1ft = 12in
//1 lbf.s^2 = 32.2 lbm.ft
v=(2*dP*144*32.2/rho_air)^0.5//ft/s
printf("The velocity of air in the air duct is %f ft/s",v);