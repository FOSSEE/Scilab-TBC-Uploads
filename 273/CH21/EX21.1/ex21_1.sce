clc;clear;
//Example 21.1
//calculation of magnetizing force and relative permeability

//given values
M=2300;//magnetization in A/m
B=.00314;//flux density in Wb/m^2
u=12.57*10^-7;//permeability in H/m

//calculation
H=(B/u)-M;
disp(H,'magnetizing force(in A/m)is ');
Ur=B/(u*H);
disp(Ur,'relative permeability is')
