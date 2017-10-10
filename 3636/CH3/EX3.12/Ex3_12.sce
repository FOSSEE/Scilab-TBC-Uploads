clc;
clear;
R=10*10^3 //Resistance in ohm
V=5 //Voltage in V
J=50 //current density in A/cm^2
E=100 //in V/cm
q=1.6*10^10 //in eV
myu_p=410 //in cm^2/V*s
Nd=5*10^15 //in cm^-3

//Calculation
I=V/R //ohms law in mA
A=I/J //Area in cm^2
L=V/E 
rho=(R*A)/L
sigma=1/rho //in ohm^-1 cm^-1
Na=(sigma/(myu_p*q))+Nd

mprintf("a)Limiting electric field= %i V/cm\n",E)
mprintf("b)Length of resistor= %.1e cm\n",L)
mprintf("c)Area of cross-section= %.1g cm^2\n",A)
mprintf("d)Acceptor doping concentration= %.2g cm^-3",Na) //The answer provided in the textbook is wrong
