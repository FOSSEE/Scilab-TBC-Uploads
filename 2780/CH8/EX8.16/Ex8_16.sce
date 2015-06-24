clc
//to calculate wavelength of two X-rays
h=6.6*10^-34 //planck's constant in J-s
c=3*10^8 //light speed in m/s
mo=9.1*10^-31 //mass of electron in kg
lambda=10*10^-12 //wavelength in pm
lambda1=lambda+((h/(mo*c))*(1-(1/sqrt(2))))
disp("wavelength of two X-rays is lambda1="+string(lambda1)+"m")
//to calculate maximum wavelength
lambda2=lambda+((2*h)/(mo*c))
disp("maximum wavelength present in the scattered X-rays is lambda2="+string(lambda2)+"m")
//to calculate maximum kinetic energy 
Kmax=(h*c)*((1/lambda)-(1/lambda2))/(1.6*10^-19)
disp("maximum kinetic energy of the recoil electrons is Kmax="+string(Kmax)+"eV")
