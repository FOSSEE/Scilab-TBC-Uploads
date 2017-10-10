clc;
de=110*(%pi/180); // pole pitch
g=0.4*10^-2; // air gap length
B=0.5; // air gap flux density
d=0.3; // armature diameter
uo=4*%pi*10^-7; // free space permeability
fe=(B^2*d*de*g)/(2*uo); 
printf('Force that tends to pull the armature into alignment is %f N',fe)
