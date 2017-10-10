clear;
clc;
n0=10^16 //doping atoms of P in atoms/cm^3
ni=1.5*10^10 //in cm^-3 
Const=0.0259 //constant value for kT in eV

//Calculation
p0=(ni^2)/n0 //in cm^-3
x=(n0/ni) 
delE=Const*log(x) //difference between energy bands Ef-Ei

mprintf("Ef-Ei= %.3f eV",delE)
