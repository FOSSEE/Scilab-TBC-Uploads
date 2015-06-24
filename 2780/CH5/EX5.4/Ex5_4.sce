clc
//to calculate area and intensity of the image
lambda=7200*10^-10 //wavelength in m
d=5*10^-3 //aperture in m
dtheta=lambda/d //angular spread in radian 
f=0.1 //focal length in m
arealspread=(dtheta*f)^2
disp("areal spread ="+string(arealspread)+"m^2")
power=50*10^-3
I=power/arealspread
disp("intensity of the image is I="+string(I)+"watts/m^2")
