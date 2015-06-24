clc
//Example 19.5
//Calculate how far is the concentration of 0.1% from initial interface and the volume mixed
c=0.1//percent
c_interface=50//percent
c_original=0//percent
ratio_c=(c-c_interface)/(c_original-c_interface)//dimentionless
//erf(0.998)=2.15
//time required forfluid to travel 700 miles at 8ft/s is 4.57*10^5 sec
t=4.57*10^5//s
D=2*10^(-9)//m^2/s
x=2*2.15*(D*t)^0.5//m
printf("x=%f m\n",x);
v0=0.355//ft^3 of liquid/ft of pipe
//1 m = 3.281 ft
V_mixed=2*(3.281*x)*v0//ft^3
printf("the mixed volume is %f ft^3",V_mixed);