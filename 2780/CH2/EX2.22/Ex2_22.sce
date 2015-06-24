clc
//to calculate wavelength of light 
theta=10*%pi/(60*60*180) //angle of wedge in radians
omega=5*10^-3 //distance between the successive fringes in cm
mu=1.4 //refractive index
lambda=2*mu*theta*omega
disp("the wavelength of light is lambda="+string(lambda)+"m")
