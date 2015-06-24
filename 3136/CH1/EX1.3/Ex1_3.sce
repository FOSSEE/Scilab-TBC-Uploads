clear all; clc;
//This numerical is Ex 1_2E,page 10.
Q=12000
A=3.5
rho_a=0.0762
E=0.85
r=2.5//resistance of duct system
V=Q/(60*A)
printf('The air flow velocity at discharge is %0.2f ft/s',V)
KE=(rho_a*(V^2))/(32.2*2)
printf('\n The product is %0.2f lb/ft^2',KE)
//PE=KE
Hv=KE/62.4
printf('\n The dynamic head is %0.3f ft',Hv)
disp("The value of dynamic head in inches of water is 0.74.")
Hvi=0.74//Head in inches
Ht=r+Hvi
printf('\n The total head is %0.2f inches of water',Ht)
p_tot=Ht*62.4
Ps=Q*p_tot/(60*12*E)
printf('\n The shaft power is %0.1f ft-lb/s',Ps)
disp("The shaft power is 7.2 hp.")
