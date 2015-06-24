//Exa 4.8
clc;
clear;
close;
//given data
k=45;// in W/m degree C
d =0.1;// in meter
l =0.30;// in meter
t=800;// in degree C
t_i=100;// in degree C
t_infinite=1200;// in degree C
h= 120;// in W/m^2 degree C
alpha=1.2*10^-5;// in meter
rhoC= k/alpha;
V=%pi/4*d^2*l;// in m^3
A= %pi*d*l + 2*%pi/4*d^2;// in m^2
// l_s= V/A = (%pi/4*d^2*l)/(%pi*d*l + 2*%pi/4*d^2) = d*l/(4*l+2*d^2)
l_s = d*l/(4*l+2*d^2);
Bi= h*l_s/k;
// since Bi < 0.1 , hence lumped heat capacity analysis can be applied
// (t-t_infinite)/(t_i-t_infinite)  =  %e^(-h*A*toh /(rho*V*C)) = %e^(-h*toh/(rho*l_s*C)) = %e^(-h*toh/(rhoC*l_s))
toh = -log((t-t_infinite)/(t_i-t_infinite))*rhoC*l_s/h;// in sec

// So, the velocity of ingot passing through the furnace
FurnaceLength = 8*100;// in cm
time = toh;
Velocity = FurnaceLength/time;// in cm/sec
disp(Velocity,"Maximum speed in cm/sec")
