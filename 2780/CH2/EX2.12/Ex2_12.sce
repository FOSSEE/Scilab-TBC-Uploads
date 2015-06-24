clc
//to calculate refractive index of mica
t=1.2*10^-8 //thickness of thin sheet of mica in m
n=1 
lambda=6*10^-7 //wavelength in m
mu=(n*lambda/t)+1
disp("the refractive index of mica is mu="+string(mu)+"unitless")
//answer is given wrong in the book=1.50
