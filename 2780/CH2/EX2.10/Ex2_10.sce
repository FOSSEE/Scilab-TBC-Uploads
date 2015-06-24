clc
//to calculate thickness of glass plate
n=3
mu=1.5 //refractive index (unitless)
lambda=5450*10^-10 //wavelength in m
t=n*lambda/(mu-1)
disp("the thickness of glass plate is t="+string(t)+"m")
