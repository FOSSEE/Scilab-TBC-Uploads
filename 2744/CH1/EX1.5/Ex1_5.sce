clear all;
clc;
b = 8;//width in inches
t = 3/8;//thickness in inches
l = 20;//length in feets
P = 22;//pull in tons
E = 13500;//modulus of elasticity in tons/in^2
sigma = 0.3;//poisson/s ratio
A = b*t;//in in^2
V = l*A*12;//in cub.inch
p = P/A;//in tons/in^2
e = p/E;
delta_l = e*l*12;//stretch of the bar in inches
Lateral_strain = e*sigma ;//lateral strain
del_b = b*Lateral_strain;//in inches
del_t = t*Lateral_strain;//in inches
k = e*(1-2*sigma);//(del_V)/(V)
del_V = k*V;//change in volume in cub.inch
printf('The change in volume is %.3f cub.inch',del_V);
