//Determine the inductance of individual winding

clc;
clear;

La=15; // Self inductance of first coil
Lb=16;// Self inductance of second coil
M=-8; // Since the flux from both coils oppose each other

L1=La+M;
L2=Lb+M;

L=L1*L2/(L1+L2);

printf('The inductance of the individual windings are %g H and %g H respectively.\n',L1,L2)
printf('The equivalent inductance between the terminals is %g H\n',L)
