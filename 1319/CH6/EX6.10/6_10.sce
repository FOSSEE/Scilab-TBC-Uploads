//Number of conductors of compensating winding

clc;
clear;

P=8; // No of Poles
Z=960; // No of conductors
ep=70/100; // Effective pole pitch

Zp=Z/P; // No os conductors per pole

AZp= ep*Zp; // No of actice armature conductors

Zpc=ceil(AZp/P); // Conductors in compensating winding

printf('The number of conductors of compensating winding = %g conductor/pole \n',Zpc)
