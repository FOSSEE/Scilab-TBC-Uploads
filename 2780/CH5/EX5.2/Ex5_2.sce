clc
//to calculate angular spread of the beam
lambda=8*10^-7 //wavelength in m
d=5*10^-3 //aperture in m
dtheta=lambda/d 
disp("the angular spread of the beam is dtheta="+string(dtheta)+"radian")
//to calculate the areal spread when it reaches the moon
D=4*10^8 //distance of the moon in m
A=(D*dtheta)^2
disp("the areal spread is A="+string(A)+"m^2")
