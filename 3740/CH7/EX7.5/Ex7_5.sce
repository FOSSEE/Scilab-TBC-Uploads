//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
h=6.6e-34;//Planck's constant in SI Units
e=1.6e-19;//Electronic charge in C
m=9.1e-31;//Rest mass of electron in kg
me=0.068*m;//Relative mass of electron in conduction band
n1=1;//Initial state of electron
n2=2;//Final state of electron
Lz=10e-9;//Width of the quantum well in m

DeltaE=(h^2)/(8*me)*((n2/Lz)^2-(n1/Lz)^2);//Energy difference between the two states in J
mprintf("\n DeltaE = %.3f eV",DeltaE/e);//Dividing by 'e' to convert to eV
