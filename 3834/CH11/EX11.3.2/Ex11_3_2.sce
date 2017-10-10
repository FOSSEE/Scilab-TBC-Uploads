//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.2
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given

Pin=0.1E-6;//Average input power in W
lambda=1550;//Operating wavelength in nm
T=300;//Room temperature in K
R=1;//Responsivity of an MF-432 PIN photodiode in A/W
X=R^2*Pin^2;
Inoise=30.2E-9;//RMS value of noise current for an MF-432 PIN photodiode

SNR=X/(Inoise^2);//SNR of an MF-432 PIN photodiode
mprintf("SNR of an MF-432 PIN photodiode = %.2f",SNR);//the answer vary due to rounding
