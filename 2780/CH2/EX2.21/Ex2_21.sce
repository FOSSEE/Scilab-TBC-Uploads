clc
//to calculate angle of the wedge
lambda=6000*10^-10 //wavelength in m
mu=1.4 //refractive index in unitless
omega=2*10^-3 //distance in m
theta=lambda/(2*mu*omega)
disp("the angle of the wedge is theta ="+string(theta)+"radians")
