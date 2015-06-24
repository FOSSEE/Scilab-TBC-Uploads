clear all; clc;
//This numerical is Ex 1_3S,page 12.
H=90
Q=4.2//water flow rate(in m^3/s)
n=1800
E=0.87//efficiency
rho=998
g=9.81
omega=(n*2*%pi)/60
dp=rho*g*H
printf('The pressure is %g N/m^2',dp)
Ps=E*Q*dp
printf('\n Output power is equal to %0.3f N-m/s',Ps)
disp("After rounding off the value of output power is 3220 kW.")
Psr=3220000//rounded off value of Ps
Torque=Psr/omega
printf(' The output torque is %g N-m.',Torque)
disp("After rounding off the output torque comes out to be 17.1*10^3 N-m.")
