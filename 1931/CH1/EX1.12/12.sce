clc
clear
//INPUT DATA
V=7500//volume of cinema hall in m^3
T=1.5//The reverberation time of the cinema hall in sec

//CALCULATION
TaS=(0.167*V)/(T)//The total absorbtion in the hall in sabine m^2

//OUTPUT
printf('The total absorbtion in the hall is %i sabine m^2',TaS)
