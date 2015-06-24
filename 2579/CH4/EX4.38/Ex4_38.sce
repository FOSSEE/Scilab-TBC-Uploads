//Ex:4.38
clc;
clear;
close;
// Equation of Input impedence- Let V be the emf applied at the end of terminals. This is being divided equally in each dipole. Hence voltage in each dipole V/2 as shown and by nodal analysis
// V/2=I1.z11+I2z.12
// where I1, I2 are the currents flowing at terminals of dipole no. 1 and 2 and z11 & z12 are self impedance between dipole 1 & 2 respectively
// But, I1=I2
// Then, V/2=I1(z11+z12)
// The two dipole in system are very close to each other. The spacing between two dipoles is of the order of y/100, i.e., z11=z12
// Then, V/2=I1*(2z11)
// z=V/I1 then, z=4*z11,      z11=73 for a dipole
z11=73;// for a dipole
z=4*z11;// input impedance in ohm
printf("The input impedance = %d ohm", z);