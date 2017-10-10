clc;
g=0.003; // gap length
wp=0.006; // pole width
B=0.8; // flux density in air gap
uo=4*%pi*10^-7; // free space permeability
// after the derivation of expression
fe=(B^2*wp*g)/(2*uo);
printf('Force tending to bring electromagnets into axial alignment is %f N',fe);
