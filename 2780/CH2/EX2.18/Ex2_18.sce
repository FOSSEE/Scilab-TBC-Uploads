clc
//to calculate least thickness of the film
lambda=5893*10^-10//wavelength in m
r=0 //in degree
mu=1.42 //refractive index
n=1
//the formula is t=n*lambda/(2*mu*cosr), where cos0=1
t=n*lambda/(2*mu*1)
disp("the least thickness of the film that will appear black is t="+string(t)+"m")
t=(2*n-1)*lambda/(2*mu*1*2)
disp("the least thickness of the film that will appear bright is t="+string(t)+"m")
