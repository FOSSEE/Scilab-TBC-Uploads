//Initialisation of variables
clc
n=2//number of atoms in plane
r=3.5e-8/2//armstrom
//interatomic distance=2*r
a=4*r/sqrt(2)
Area=a^2
AtomsperArea=n/Area
printf('atoms per cm cube is %e\n',AtomsperArea)//correction
