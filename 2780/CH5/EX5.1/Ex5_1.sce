clc
//to calculate area of the spot on the moon
lambda=6*10^-7 //wavelength in m
d=2 //diameter in m
dtheta=lambda/d //angular spread in radian
D=4*10^8 //distance of the moon
A=(D*dtheta)^2
disp("the areal spread is A="+string(A)+"m^2")
