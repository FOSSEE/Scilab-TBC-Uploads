//Exa 4.11
clc;
clear;
close;
//given data
k=40;// in W/m degree C
d =12*10^-3;// in meter
t=127;// in degree C
t_i=877;// in degree C
t_infinite=52;// in degree C
h= 20;// in W/m^2 degree C
rho=7800;// in W/m^2K
C=600;// in J/kg K
r=d/2;// in meter
//l_s = V/A = r/3
l_s =  r/3;
Bi= h*l_s/k;
// since Bi < 0.1 , hence lumped heat capacity analysis can be applied
// (t-t_infinite)/(t_i-t_infinite)  =  %e^(-h*A*toh /(rho*V*C)) = %e^(-h*toh/(rho*l_s*C)) = %e^(-h*toh/(rho*C*l_s))
toh = -log((t-t_infinite)/(t_i-t_infinite))*rho*C*l_s/h;// in sec
disp("Time required for cooling process : "+string(toh)+" seconds or "+string(toh/60)+" minutes")