clc
clear
//INPUT DATA
V=120000//Volume of the hall in m^3
T=1.55//The reverberation time in sec
S=26500//The total absorbing surface in m^2

//CALCULATION
TaS=(0.167*V)/T//The average absorbtion coefficient in sabine-m^2
a=(TaS/S)//The average absorbing power of the surface in sabine

//OUTPUT
printf('The average absorbing power of the surface is %3.4f sabine',a)
