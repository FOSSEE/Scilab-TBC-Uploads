clc
//to calculate resolving limit of microscope
lambda=5.5*10^-5 //wavelengh in cm
theta=%pi/6 //in radians
s=1.22*lambda/(2*sin(%pi/6))
disp("resolving limit of microscope is s="+string(s)+"cm")
