clc 
// Given that
d = 25 // Diameter of circular hole in mm
t = 20 // Thickness of the steel plate in mm
D = 27 // Enlarged diameter of hole in mm
c= 0.08 // Cut per tooth in mm
alpha = 10 // Radial rake angle in Degree
mu = 0.5 // Cofficient of friction
T_s = 400 // Shear yield stress in N/mm^2
// Sample Problem 19 on page no. 241
printf("\n # PROBLEM 4.19 # \n")
lambda=atand(mu)
phi = 45-lambda+alpha
w = %pi*(d+D)/2
Fc = w*c*T_s*(cosd(lambda-alpha))/((sind(phi))*(cosd(45)))
s = 1.75*sqrt(t)
F = 3*Fc
printf(" \n Peak broaching load = %d N.",ceil(F))
