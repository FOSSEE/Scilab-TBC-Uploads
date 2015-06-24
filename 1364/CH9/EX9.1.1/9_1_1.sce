clc
//initialisation of variables
d= 1.6 //lb/ft^3
vk= 6.2*10^-6 //ft^2/sec
R= 1.8 //lbf
v= 100 //ft/sec
d1= 64 //lb/ft^3
vk1= 1.7*10^-5 //ft62/sec
l= 10 //ft
//CALCULATIONS
u= v*vk1/(vk*l)
u1= v*vk1/(vk*l*1.98)
r= d1*l^2*(u/100)^2/d
F= r*R
//RESULTS
printf (' resistance= %.f lbf ',F)
