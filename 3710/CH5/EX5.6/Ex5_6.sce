//Example 5.6, Page Number 225
//Efficiency of He-Ne Laser
clc;
i=1*(10**-2) //Current in Ampere
V=2500 //in volts
P=5*(10**-3) //Optical Output in Watt

E=P/(i*V) //E is the overall Power Efficiency
E=E*100
mprintf("The Overall Power Efficiency is %0.2f percent ",E);

