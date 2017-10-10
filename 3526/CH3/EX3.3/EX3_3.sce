//page 56
clc;funcprot(0);//EXAMPLE 3.14
// Initialisation of Variables
r=1;.........// one unit of radius of each atom of FCC  cell
a0=(4*r)/sqrt(2);..........//Lattice constant for FCC   cell
v=(4*%pi*r^3)/3;.........//volume of one atom in FCC cell
Pf=(4*v)/(a0)^3;........//Packing factor in FCC cell
disp(Pf,"Packing factor in FCC cell")
