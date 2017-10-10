//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
k=1.38e-23;//Boltzmann constant in SI Units
T=300;//Absolute temperature in K
R=1e3;//Load resistance in Ohms
Deltaf=1e3;//Bandwidth of the photo multiplier in Hz
e=1.6e-19;//Electronic charge in C
iT=1e-14;//Dark current in A


DeltaVj=sqrt(4*k*T*R*Deltaf);
mprintf("\n DeltaVj = %.1e V",DeltaVj);
//The answer provided in the textbook is wrong

Deltais=sqrt(2*iT*e*Deltaf);//Corresponding magnitude of rms current fluctuations in A
mprintf("\n Deltais = %.1e A",Deltais);

//Let the photomultiplier gain be G
G=1e7;//Given
//Let the shot noise voltage signal across R be DeltaVj2
DeltaVj2=Deltais*G*R;
mprintf("\n DeltaVj2 = %.1e V",DeltaVj2);
