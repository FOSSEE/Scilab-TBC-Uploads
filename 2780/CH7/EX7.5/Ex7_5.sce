clc
//to calculate kinetic energy of an electron 
h=6.63*10^-34 //plank's constant
mo=9.1*10^-31 //rest mass of an electron in kg
lambda=5896*10^-10  //wavelength in angstrom
K=(h^2)/(2*mo*(lambda^2)*1.6*10^-19) 
disp("kinetic energy of an electron is K="+string(K)+"eV")
