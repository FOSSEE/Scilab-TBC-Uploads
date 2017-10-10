//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.2.1
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given
lambda=1300;//Operating wavelength in nm
ETAext=0.1;//External Quantum Efficiency
e=1.6E-19;//Electrons value in Coulomb
Ep=0.0153E-17;//photon's energy in J
SlopeE=(Ep/e)*ETAext;//Slope Efficiency
mprintf("Slope Efficiency = %.3f",SlopeE);
