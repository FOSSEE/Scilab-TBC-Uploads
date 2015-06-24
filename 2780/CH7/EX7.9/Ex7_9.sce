clc
//to calculate energy of the neutron
h=6.60*10^-34 //plank's constant in J/s
m=1.674*10^-27 //mass of the neutron in kg
lambda=10^-10 //de Broglie wavelength in m
E=(h^2)/(2*m*(lambda^2)*1.6*10^-19)
disp("energy of the neutron is E="+string(E)+"eV")
