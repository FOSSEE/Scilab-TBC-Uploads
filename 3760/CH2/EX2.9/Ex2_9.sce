clc;
r=50*10^-3; // radius of rotor
g=2*10^-3; // air gap length
l=10*10^-3; // length normal to radius r
B=2.2; // maximum air gap flux density 
uo=4*%pi*10^-7; // free space permeability
// after the derivation of the expression
T=(B^2*g*(r+(g/2))*l)/uo;
printf('Magnitude of torque is %f N-m',T);

