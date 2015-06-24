clc
//Example 6.5
//Calculate volumetric flow rate of gasoline through a pipe
d=0.1//m internal diameter of pipe
A=%pi*d^2/4//m^2
dx=100//m length of pipe
f=0.005//dimentionless fanning friction factor
dz=10//m difference in water level
g=9.81//m/s^2
v=((2*g*dz/4/f)*d/dx)^0.5//m/s
printf("The velocity of gasoline through pipe is %f m/s\n",v);
q=A*v//m^3/s
printf("The volumteric flow arte od gasoline through the pipe is %f m^3/s",q);