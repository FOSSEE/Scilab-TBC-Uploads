clc;
B=1.6; // flux density between magnetic surfaces
a=1; // area of magnetic surfaces
uo=4*%pi*10^-7; // free space permeability
f=(B^2*a)/(2*uo); 
printf('Force between two magnetic surfaces is %f N',f);
 
