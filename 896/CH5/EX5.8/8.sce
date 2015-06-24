clc
//Example 5.8
//calculate volumetric flow rate using a venturi-meter
dP=1//psi
rho_water=62.3//lbm/ft^3
d1=1//ft area at pt 1 in venturimeter
A1=(%pi)*d1^2/4//ft^2
d2=0.5//ft
A2=(%pi)*d2^2/4//ft^2
//1ft = 12in
//1 lbf.s^2 = 32.2 lbm.ft
v=((2*dP*144*32.2/rho_water)/(1-(A2/A1)^2))^0.5//ft/s
printf("The velocity of the water flowing through venturimeter is %f ft/s\n",v);
q=v*A2//ft^3/s
printf("The volumetric flow rate of water is %f ft^3/s",q);