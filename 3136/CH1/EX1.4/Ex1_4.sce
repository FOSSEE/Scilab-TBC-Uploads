clear all; clc;
//This numerical is Ex 1_2S,page 11.
Q=340
A=0.325
V=Q/(60*A)
printf('The air flow velocity at discharge is %0.1f m/s',V)
rho_a=1.22
Vr=17.4
Hd=(rho_a*(Vr^2))/2
printf('\n The dynamic pressure head is %0.1f Pa',Hd)
Hdr=184.7//rounded off value of Hd
rho_w=998//density of water=rhow
g=9.81
H=0.0635
dp=rho_w*g*H//static pressure head
printf('\n The static pressure head is %0.1f Pa',dp)
dpr=621.7
p_tot=Hdr+dpr
printf('\n The total pressure head is %0.1f Pa',p_tot)
p_tot=806.4
E=0.85//efficiency
Ps=Q*p_tot/(60*E)
printf('\n The shaft power is %g W',Ps)
disp("The shaft power is 5.376 kW.")
