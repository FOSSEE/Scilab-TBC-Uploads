clc
//to calculate diameter of a telescope 
lambda=5*10^-5 //wavelength in cm
theta=(%pi/180)*(1/1000) //in radians
a=1.22*lambda/theta
disp("the diameter of a telescope is a="+string(a)+"cm")
