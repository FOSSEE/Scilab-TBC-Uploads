clc
clear
//Input data
E=3//Energy of photon in eV
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
p=((E*e)/c)/10^-27//The momentum of the photon in kg.m/s

//Output
printf('The momentum of the photon is %3.1f*10^-27 kg.m/s',p)
