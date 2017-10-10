//Example 6.2, Page Number 256
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Energyof Q Switched Pulses
clc;

//In a typical Laser
N1=10**24 //per meter cube
f=5*(10**14) //Frequency in hertz
v=(10**-5) //Volume in per meter cube
h=6.63*(10**-34) //Plancks Constant in meter square kilogram per second

//Assuming Nf<<<Ni

E=0.5*(h*v*N1*f) //Where E is the Energy of the pulses
E=fpround(E,1)

mprintf("The Energy of the Pulse is %.1f J",E)
