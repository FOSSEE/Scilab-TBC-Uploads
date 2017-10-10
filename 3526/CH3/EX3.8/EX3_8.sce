//page 64
clc;funcprot(0);//EXAMPLE 3.8
// Initialisation of Variables
r=1;.......//Radius of each atom in units
l=0.334;.......//Lattice parameter of (010) in nm
//CALCULATIONS
a1=2*r;........//Area of face for (010)
a2=l^2;...........//Area of face of (010) in cm^2
pd=1/a2;........//Planar density of (010) in atoms/nm^2
pf=%pi*r^2/(a1)^2;......//Packing fraction of (010)
disp(pd*10^14,"Planar density of (010) in atoms/cm^2:")
disp(pf,"Packing fraction of (010):")
