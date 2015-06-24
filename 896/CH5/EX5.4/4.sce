clc
//Example 5.4
//calculate velocity of water flowing out of nozzle
A_nozzle=1//ft^2
A_tank=4//ft^2
g=32.2//ft/s^2
h=30//ft
v=(2*g*h/(1-(A_nozzle/A_tank)^2))^0.5//ft/s
printf("The velocity of water flowing out of nozzle is %f ft/s",v);