clc
//to calculate aperture of the objective of a telescope
lambda=6*10^-5 //wavelength of light in cm
dtheta=4.88*10^-6 // in radians
a=1.22*lambda/dtheta
disp("the aperture of the objective of a telescope is a="+string(a)+"cm")
