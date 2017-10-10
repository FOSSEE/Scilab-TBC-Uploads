
//Example 10_3
clc();
clear;
//To find te volume associated with mercury atom in liquid mercury
M=201   //Units in Kg/Kmol
n=6.02*10^26   //units in K mol^-2
mo=M/n    //units in Kg
n1=13600    //units in Kg/Meter^3
noatoms=n1/mo    //units in atoms/Meter^3
volume_atom=1/noatoms     //units in Meter^3/Atom
printf("The volume associated is ")
disp(volume_atom)
printf("Meter^3/Atom")
