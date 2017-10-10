clc;
disp("Example 2.8")
m=0.2
// thickness in cm
mew=1 // viscosity in poise
w= 10
// width of the plate in cm
density=1 // density in gm/cc
g=981  // acceleration due to gravity in cm/s^2
//Q is the liquid flow rate
Q=(density*g*m*m*m*w)/(3*mew)
disp(" The flow rate is  ")
disp(Q)
disp(" gm/cc")
