
clc
clear
//Input data
Vs=2500;//The mass of a bed of solid particles in kg
p=2650;//The density of the solid in kg/m^3
d=800*10^-6;//The mean particle size in m
s=0.84;//The sphericity of the particle

//Calculations
As=(6*Vs)/(p*d*s);//The total surface area of the particles in the bed

//Output
printf(' The total surface area of the particles in the bed As = %3.0f m^2 ',As)
