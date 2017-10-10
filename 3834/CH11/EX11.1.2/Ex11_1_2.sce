//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.3.3
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given
ETA=0.7;//The quantum efficiency
lambda=1664;//Operating wavelength in nm
R=(ETA/1248)*lambda;//Responsivity of an InGaAs photodiode  A/W

mprintf("Responsivity of an InGaAs photodiode =%.3f A/W",R);
