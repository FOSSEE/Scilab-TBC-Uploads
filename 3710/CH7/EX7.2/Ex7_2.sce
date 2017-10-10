//Example 7.2, Page Number 306
//Vacuum photodiode output
clc;

l=500*(10**-9) //Wavelength of radiation in metres
P=1*(10**-6) //Power in Watts
q=0.5 //Quantum Efficiency
e=1.6*(10**-19) //Charge of an electron in Coulombs
h=6.63*(10**-34) //Plancks Constant in meter square kilogram per second
c=3*(10**8) //Speed of light in meters per second

//From equation 7.9
i=(q*e*P*l)/(h*c) //i is the current generated in Amperes

mprintf("The Current Generated is:%.0e A",i)
