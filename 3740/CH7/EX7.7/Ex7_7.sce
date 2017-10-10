//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
A=100e-6*100e-6;//Junction area of the photodiode in m^2
Epsilonr=12;//Relative permittivity of InGaAs
Epsilon0=8.84e-12;//Permittivity of free space in SI Units
w=2e-6;//Thickness of the i region
Rl=50;//Load resistance in Ohms
vsat=1e5;//Saturation velocity of electrons in InGaAs

Tdrift=w/vsat;//Transit time of electrons through the depletion region in s
mprintf("\n Tdrift = %.1e s",Tdrift);

Cj=A*Epsilon0*Epsilonr/w;//Diode capacitance in F
mprintf("\n Cj = %.1e F",Cj);

Trc=Rl*Cj;//Response time associated with the detector RC network in s
mprintf("\n Trc = %.1e s",Trc);//The answers vary due to round off error

T=sqrt((Tdrift)^2+(Trc)^2);//Total time response in s
mprintf("\n T = %.1e s",T);
//The answers vary due to round off error
