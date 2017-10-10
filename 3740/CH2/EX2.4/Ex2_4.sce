//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n=5e24;//Donor concentration in m^(-3)

//Case (i)
B=7.2e-16;//Recombination constant for GaAs in m^3 s^(-1)
Th=1/(B*n);//Hole lifetime in s
mprintf("Th for GaAs = %.1f ps",Th/1e-12);//Dividing by 10^(-12) to convert to ps
//The answers vary due to round off error

//Case (i)
B=1.8e-21;//Recombination constant for Si in m^3 s^(-1)
Th=1/(B*n);//Hole lifetime in s
mprintf("\n Th for Si = %.1f us",Th/1e-6);//Dividing by 10^(-6) to convert to us
//The answers vary due to round off error
