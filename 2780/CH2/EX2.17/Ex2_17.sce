clc
//to calculate the smallest thickness of the plate
mu=1.5 //refractive index(unitless)
r=60*%pi/180 //angle of refraction in radians
lambda=5890*10^-10 //wavelength in m
n=1
//formula is t=n*lambda/(2*mu*cosr) where cosr=0.5
t=n*lambda/(2*mu*0.5)
disp("the smallest thickness of the plate which will appear dark by reflection is t="+string(t)+"m")
