//Example 8.2 // Dipole moment of slab
clc;
clear;
//given data :
D=5D-4;// displacement vector magnitude in m2
P=4D-4;// Polarisation  vector magnitude  in m2
E=D-P;// Field Intensity in m2
V=.5;// volume of slab in m3 
k=D/E;// dielectric contant 
p=P*V;//total dipole moment in m5
disp(k,"Dielectric constant")
disp(p,"total dipole contant in m5")
