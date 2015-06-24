clc
//to calculate radius of curvature 
n=10
Dn=0.50 //diameter of 10th ring in cm
lambda=6000*10^-8 //wavelength in cm
R=Dn^2/(4*n*lambda)
disp("the radius of curvature of the lens is R="+string(R)+"cm")
//answer is given wrong in the book =106 cm
//to calculate thickness of the film
t=Dn^2/(8*R)
disp("the thickness of the film is t="+string(t)+"cm")
