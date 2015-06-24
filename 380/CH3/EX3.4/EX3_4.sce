//Caption:Find the current in the coil and energy stored in the system
//Exa:3.4
clc;
clear;
close;
N=100;//no. of turns of coil
A=10^-4;//area 
x=1*10^-2;//length of air gap
u_o=4*%pi*10^-7;//permeablity of air
u_r=2000;//permeablity of magnetic material
D=7.85*10^3;//density of material (in kg/m^3)
V=11*10^-6;//volume of material
m=D*V;//mass of material
g=9.81;//acceleration due to gravity
//Refer to fig:3.7
R_o=(15.5*10^-2)/(u_o*u_r*A);//reluctance of outer legs
R_c=(5.5*10^-2)/(u_o*u_r*A);//reluctance of central leg
function y = L ( x );//inductance
y = (N^2)/ R ( x );
endfunction;
function y = R ( x );//total reluctance 
y = R_c+R_g(x)+(0.5*(R_o+R_g(x)));
endfunction;
function y = R_g ( x );//reluctance of air gap
y = x/(u_o*A);
endfunction;
x = [0.01 ]';     // Points of interest
t=[diag(derivative(L,x))];//t=dL/dx (at x=0.01m)
//since t<o,i.e,F_m is acting in opp direction that of weight  
//for equilibrium F_m=m*g
I=sqrt((m*g)/(0.5*t*(-1)));//Refer to eqn3.23
disp(I,'current in the coil (in Amperes)=');
L_o=L(.01);
W_f=0.5*L_o*I^2;
disp(W_f*10^3,'energy stored in the magnetic feild  (in mili-Joules)=')