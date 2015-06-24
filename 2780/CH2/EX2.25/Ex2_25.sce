clc
//to calculate radius of curvature
lambda=5900*10^-10 //wavelength in m
n=10
Dn=5*10^-3 // diameter of 10th dark ring in m
R=Dn^2/(4*n*lambda)
disp("the radius of curvature of the lens is R="+string(R)+"m")
//to calculate thichness
t=n*lambda/2
disp("the thickness of the air film is t="+string(t)+"m")

