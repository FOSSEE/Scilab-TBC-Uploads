clear;
clc;
v=5*10^5 //velocity of electron in cm/s
m=9.11*10^-31 //mass of electron in kg
const=1.6*10^-19 //in eV

//Calculation
delv=0.02 //change in speed in cm/s
delE=(m*v*delv)/const

mprintf("Increase in kinetic energy of electron= %1.1e eV",delE)

