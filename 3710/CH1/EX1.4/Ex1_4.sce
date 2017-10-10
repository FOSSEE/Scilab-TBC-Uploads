//Example 1.4, Page Number 29
//Total Power Calculation

clc;

em=0.7 //Emissivity Of the Surface
T=2000 //Temperature in Kelvin
A=(10**-5) //Area in Meter Square
S=5.67*(10**-8) //Stefan-Boltzmann Constant in Watt per meter square Kelvin power four

W=em*S*A*(T**4) //W is the total power radiated in Watt

mprintf("The Total Power Radiated from the Source is %.2f W",W);
