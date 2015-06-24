clc
//to calculate thickness of the film
mu=1.33 //refractive index of soap film (unitless)
i=45*%pi/180
//the formula is mu=sini/sinr 
sinr=0.5317 
cosr=sqrt(1-(sinr)^2)
//for destructive interference
lambda=5890*10^-10 //wavelength in m
n=1
t=n*lambda/(2*mu*cosr)
disp("the thickness of the film is t="+string(t)+"m")
