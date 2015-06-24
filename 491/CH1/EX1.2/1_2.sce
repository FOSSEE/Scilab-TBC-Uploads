W = 1500; // weight (Newton)
d = 0.008 ; //diameter(meter) 
g = 77000; // Weight density of steel
L = 40 ; // Length of bar (m)
A = (%pi/4)*(d^2) // Area
s_max = (1500/A) + (g*L) // maximum stress
disp("Pa",s_max,"Therefore the maximum stress in the rod is")