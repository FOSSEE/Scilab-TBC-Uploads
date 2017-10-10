//Chapter 11 : Free Electron Theory Of Metals

clear;

//Variable declaration
k=1.376*10**-23           //Boltzmann's constant in J/K
T=300                     //Temperature
m=9.11*10**-31            //Mass of electron

//Calculations
v=sqrt((3*k*T)/m)/10**5

//Result
mprintf("Root Mean Square Velocity v= %1.2f*10**5 m/s",v)
