//Example 1.5, Page Number 31
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

Z=1 //Atomic Number of Hydrogen
m=9.1*(10**-31) //Mass of an Electron
e=1.6*(10**-19) //Charge Of an Electron
p=6.6*(10**-34) //Planck's Constant
e1=8.85*(10**-12)//Permitivity of Free Space

E=(m*(Z**2)*(e**4))/(8*(p**2)*(e1**2)) //E is the Ionization Energy
E2=E/e //Conversion to Electron Volts
E2=fpround(E2,2)

mprintf("The Ionization Energy required to excite the electron from ground state to infinity:%.2f eV",E2);
