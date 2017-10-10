clc;funcprot(0);//EXAMPLE 3.5
// Initialisation of Variables
a=5.156;........//The lattice constants for the monoclinic unit cells in Angstroms
b=5.191;........//The lattice constants for the monoclinic unit cells in Angstroms
c=5.304;........//The lattice constants for the monoclinic unit cells in Angstroms
beeta=98.9;.......//The angle fro the monoclinic unit   cell 
a2=5.094;........//The lattice constants for the tetragonal unit cells in Angstroms
c2=5.304;........//The lattice constants for the tetragonal unit cells in Angstroms
//CALCULATIONS
v2=(a2^2)*c2;........//volume of a tetragonal unit cell
v1=a*b*c*sin(beeta*%pi/180);........//volume of a monoclinic unit cell
Pv=(v1-v2)/(v1)*100;........//The percent change in  volume in percent
disp(v2,"volume of a tetragonal unit cell:")
disp(v1,"volume of a monoclinic unit cell:")
disp(Pv,"The percent change in  volume in percent:")
