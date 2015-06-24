clc
//Example 5.13
//Calculate pressure at the throat in a venturimeter
dP=10//psi or lbf/in^2
rho_water=62.3//lbm/ft^3
//1ft = 12in
//1 lbf.s^2 = 32.2 lbm.ft
v3=(2*dP*144*32.2/rho_water)^0.5//ft/s
printf("The velocity of water after the throat is %f ft/s\n",v3);
ratio_A=0.5//dimentionless (ratio of throat area to pipe area)
v2=v3/ratio_A//ft/s
printf("The velocity of water at the throat is %f ft/s\n",v2);
P1=24.7//psia
rho_water=62.3//lbm/ft^3
P2=P1-(rho_water)*v2^2/32.2/144/2//psia
printf("The pressure of water at the throat is %f psia",P2);