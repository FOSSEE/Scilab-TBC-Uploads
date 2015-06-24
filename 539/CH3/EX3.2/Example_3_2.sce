//Computation of the Atomic Packing Factor for FCC

clear;
clc;

printf("\tExample 3.2\n");

//for FCC no. of atoms are 4
n=4;

//For FCC a=2*R*sqrt(2)
R=poly([0],'R');

//Edge Length
a=2*R*sqrt(2);

//Volume determination of cube
Vc=a^3;

//Volume of sphere
Vs=n*4*%pi*R^3/3;

//Atomic packing Fraction
APF=Vs/Vc;

disp(APF,"Atomic packing fraction is");

//End