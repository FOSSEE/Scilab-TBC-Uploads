clc;
clear;
ni=1.5*10^10 //in cm^-3
Ex=0.6 //position of energy level in eV
Const=0.0259 //constant value for kT in eV

//Calculation
n0=ni*exp(Ex/Const)

mprintf("concentration of doping= %.3e cm^-3",n0) //The answers vary due to round off error

