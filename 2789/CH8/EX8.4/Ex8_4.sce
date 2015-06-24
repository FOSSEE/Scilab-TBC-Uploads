clear;
clc;

//page no. 266

k = 1/10;
v = 3000;//fps
h = 15000;//altitude
T = 68;// degreeF
am = 870;//fps
ap = 1057;//fps
Vm = v*(am/ap);
rho_m = v*(1/k)*0.001495*0.031/(0.033*Vm);
p_m = 32.2*rho_m*34.9*(T+460)/(144);
printf('Vm = %d fps\n p_m = %d psia',Vm,p_m);

//there is a small error in the answer given in textbook
