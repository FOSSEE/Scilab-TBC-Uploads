//Chapter 11 : Free Electron Theory Of Metals

clear;

//Variable declaration
EF=1.1214*10**-18       //fermi energy in J
m=9.11*10**-31          //Mass of electron
h=6.63*10**-34          //planck's constant

//Calculations
n=((8*m*EF)/(h**2))**(3/2)*(%pi/3)/10**28

//Result
mprintf("No. of free electrons per unit volume= %1.3f*10**28 electrons per meter**3",n)
