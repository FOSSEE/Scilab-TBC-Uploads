//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
A=1000e-6;//Cathode area in m^2
Phi=1.25;//Work function of the metal in eV
kT_by_e=0.025;//constant term =product of Boltzmann constant with Ambient temperature divided by charge of an electron in SI Units
a=1.2e6;//Constant value for pure metals in A m^-2 K^-2
T=300;//Temperature in K 
e=1.6e-19;//Electronic charge in C
Lambda=0.5e-6;//wavelength in m
eta=0.25;//Dimensionless Quantum efficiency
h=6.6e-34;//Planck's constant in SI Units
c=3e8;//Speed of light in air in m/s
Deltaf=1;//Bandwidth in Hz

iT=a*A*(T^2)*exp(-Phi/kT_by_e);//Thermionic emission current in A
mprintf("\n iT = %.1e A",iT);//The answer provided in the textbook varies due to roundingoff 

Rlambda=eta*e*Lambda/(h*c);//Responsivity of the photomultiplier in A W^-1
mprintf("\n Rlambda = %.1f A/W",Rlambda);

Wmin=sqrt(2*iT*e*Deltaf)/Rlambda;//Minimum detectable signal power in presence of dark current iT in W
mprintf("\n Wmin = %.1e W",Wmin);//The answer provided in the textbook varies due to roundingoff 
