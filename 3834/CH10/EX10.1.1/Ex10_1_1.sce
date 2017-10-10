//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.1.1
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given
E=0.712;//the energy gap E=Ec-Ef in eV
KBT=0.025;//Boltzman constant temperature product in eV
e=1.6E-19;//Electrons value in Coulomb
Y=E/KBT;
fE= exp(-Y);//Probability of excited electrons at conduction band at room tenmperature 

mprintf("The probability of excited electrons at conduction band at room tenmperature = %.2f *1e-13 ",fE*1e13);//multiplication by 1e13 to change the unit to 1e-13
