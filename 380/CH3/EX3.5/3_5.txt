//Caption:Find the current in the coil
//Exa:3.5
clc;
clear;
T=20;//torque exerted by spring (in Newton-meter)
r=0.2;//radius of spring (in meter)
F_s=T/r;//force exerted by spring on magnetic plate
N=1000;//no. of turns in coil
u_o=4*%pi*10^-7;//permablityof air
A=9*10^-4;//area (in meter^2)
function y = L ( x );//inductance
y = (N^2)/ R ( x );
endfunction;
function y = R ( x );//reluctance of air gap
y = (2*x)/(u_o*A);
endfunction;
x = [0.001 ]';     // Points of interest
t=[diag(derivative(L,x))];//t=dL/dx (at x=0.001m)
//since t<o i.e,F_m is acting in opp direction that of weight  
//for equilibrium F_m=F_s
I=sqrt((2*F_s)/(t*(-1)));//Refer to eqn3.23
disp(I,'current in the coil (in Amperes)=')