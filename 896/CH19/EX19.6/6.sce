clc
//Example 19.6
//Calculate how far is the concentration of 0.1% from initial interface and the volume mixed
v=8//ft/s
f=0.0039//dimentionless (fanning friction factor)
D_turbulent=0.665*v*3.57*(f)^0.5//ft^2/s
//time required forfluid to travel 700 miles at 8ft/s is 4.57*10^5 sec
t=4.57*10^5//s
x=2*2.15*(D_turbulent*t)^0.5//ft
printf("x=%f m\n",x);
v0=0.355//ft^3 of liquid/ft of pipe
V_mixed=2*x*v0//ft^3
printf("the mixed volume is %f ft^3",V_mixed);