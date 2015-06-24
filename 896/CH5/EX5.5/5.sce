clc
//Example 5.5
//calculate the velocity of water flowing out of a nozzle
g=32.2//ft/s^2
h=30//ft
M_air=29//dimentionless (molecular weight)
M_CO2=44//dimentionless (molecular weight)
v=(2*g*h*(1-(M_air/M_CO2)))^0.5//ft/s
printf("The velocity of water flowing out of nozzle is %f ft/s",v);