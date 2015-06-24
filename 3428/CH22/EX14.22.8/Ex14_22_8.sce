//Section-14,Example-1,Page no.-PC.61
//To find absolute viscosity of liquid.
clc;
d_s=8*10^3
d_l=2*10^3
r=10^-3
l=0.1
t=20
g=9.8
n_l=(2*g*r^2*(d_s-d_l))/(9*(l/t))
disp(n_l,'Absolute viscosity of liquid(Pa s)')
