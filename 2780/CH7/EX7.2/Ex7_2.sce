clc
//to calculate de Broglie wavelength
//mo*c^2=1.507*10^-10/1.6*10^-19=941.87 Mev
//since 12.8 Mev is very small compared to rest mass energy hence relavistic consideration may be ignored
m=1.67*10^-27 //mass in kg
h=6.62*10^-34 //plank's constant
E=12.8*10^6 //energy in Mev
lambda=h/sqrt(2*m*E*1.6*10^-19)
disp("thede Broglie wavelength is lambda="+string(lambda)+"angstrom")
