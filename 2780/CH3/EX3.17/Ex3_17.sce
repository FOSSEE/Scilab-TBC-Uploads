clc
//to calculate angle of diffraction 
n=1 //order
lambda=5000*10^-8             //wavelength of light in cm
eplusd=1/5000      // in cm
theta=asind(n*lambda/(eplusd))
disp("angle of diffraction for maximum intensity in the first order is theta="+string(theta)+"degree") 
