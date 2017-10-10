//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
D=1e9;//Specific detectivity of detector in  m Hz^(1/2) W^(-1)
Lambda=2e-6;//Wavelength in m
A=25e-6//Detector area in m^2
Deltaf=10e3;//Detection bandwidth in Hz

NEP=sqrt(A*Deltaf)/D;//Detector sensitivity in W
mprintf("\n NEP = %.1e W",NEP);
