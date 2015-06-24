clc
//to calculate wavelength
h=6.6*10^-34 //plank's constant
m=9.1*10^-31 //mass of electron in kg
E=1.25*10^3 //pottential difference keV
lambda=h/sqrt(2*m*E*1.6*10^-19)
disp("the wavelength is lambda="+string(lambda)+"angstrom")
