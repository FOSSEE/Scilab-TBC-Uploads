clc
//Example 5.3
//Calculate the velocity of water flowing out of a nozzle at the bottom of a tank
g=32.2;//ft/s^2
h=30;//ft height tank
//considering the velocityof water at the top of the tank is negligible
v=(2*g*h)^0.5;//ft/s
printf("The velocity of the water flowing out through the nozzle is %f ft/s",v);