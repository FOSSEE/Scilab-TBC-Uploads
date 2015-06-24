clc
//to calculate refractive index of the liquid
n=6
lambda=6000*10^-10 //wavelength in m
R=1 //radius of curvature of the curved surface in m
Dn=3.1*10^-3 //diameter of 6th bright ring in m
mu=2*(2*n-1)*lambda*R/Dn^2
disp("the refractive index of the liquid is mu="+string(mu)+"unitless")
