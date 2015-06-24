//Exa 4.6
clc;
clear;
close;
//given data
k=385;// in W/mK
h=100;// in W/m^2K
delta =2*10^-3;// thickness of plate in meter
A=25*25;// area of plate in square meter
rho=8800;// kg/m^3
C=400;// J/kg-K
// l_s= V/A= L*B*delta/(2*L*B) = delta/2
l_s= delta/2;// in meter
Bi= h*l_s/k;
// since Bi < 0.1 , hence lumped heat capacity analysis can be applied

// Part(i)
// toh= rho*V*C/(h*A) = rho*C*l_s/h
toh= rho*C*l_s/h;// in second
disp(toh,"Time constant in seconds");

// Part(ii)
t_i=400;// in degree C
t=40;// in degree C
t_infinite=25;// in degree C
// (t-t_infinite)/(t_i-t_infinite) =  %e^(-h*A*toh /(rho*V*C)) = %e^(-h*toh/(rho*l_s*C)) 
toh= -log((t-t_infinite)/(t_i-t_infinite))*rho*C*l_s/h;// in sec
disp(toh,"The time required for the plate to reach the temperature of 40 degree C in seconds");

