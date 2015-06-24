clc
//to calculate difference in the refractive indices
//specific rotation is theta/d=29.73 degree/mm
theta=29.73 //where theta=theta/d
lambda=5.086*10^-4 //wavelength in mm
//optical rotation is given by theta=%pi*d*(mul-mur)/lambda
//where mul and mur are refractive indices for anti-clockwise and clockwise polarised lights
mu=theta*lambda/180 //where mu=mul-mur
disp("difference in refractive indices is mu="+string(mu)+"unitless")
