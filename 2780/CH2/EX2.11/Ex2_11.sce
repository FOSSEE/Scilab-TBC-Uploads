clc
//to calculate refractive index of the sheet
t=6.3*10^-6 //thickness of thin sheet of transparent material in m
lambda=5460*10^-10 //wavelength in m
n=6
mu=(n*lambda/t)+1
disp("the refractive index of the sheet is mu="+string(mu)+"unitless")
