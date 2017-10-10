clc;funcprot(0);//EXAMPLE 3.14
// Initialisation of Variables
wL=1.54;........//Wave length of Copper K-alpha in      Angstorms
t1=19.5;......//Half the angle between the difracted beam and the original beam direction
t2=39;......// The angle between the difracted beam and the original beam direction
//CALCULATIONS
D1=wL/(sin(t1*%pi/180));......//Interplanar spacing between the planes in Angstroms
D2=wL/(sin(t2*%pi/180));......//Interplanar spacing between the planes in Angstroms
a0=D2*(sqrt(3));.......//Lattice constant for cubic form of BaTiO3
disp(D1,"Interplanar spacing between the planes in     Angstroms:")
disp(a0,"Lattice constant for cubic form of BaTiO3:")

