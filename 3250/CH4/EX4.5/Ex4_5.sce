clc 
// Given that
t1 = 0.25 // Uncut thickness in mm
w = 2.5 // Width of cut in mm
U_0 = 1.4 // In J/mm^3
alpha = 0 // Rake angle in degree
mu = 0.5 // Cofficient of the friction
T_s = 400 // Shear stress in N/mm^2
// Sample Problem 5 on page no. 196
printf("\n # PROBLEM 4.5 # \n")
lambda = atand(mu)
Fc = 1000*(t1*w*U_0)*((t1)^(-.4))
phi = 45 + alpha - atand(mu)
Fc_ = (w*t1*T_s*cosd(lambda-alpha))/((sind(phi)) *cosd(phi+lambda-alpha))
printf(" \n The order of magnitude of cutting force = %d N,\n Using Lee and Shaffer relation- \n The order of magnitude of cutting force = %d N.",Fc,Fc_)
// Answer in the book for cutting force is given as 1517 N
