clc 
// Given that
t1 = 0.25 // Undercut thickness in mm
t2 = 0.75 // Chip thickness in mm
w = 2.5 // Width in mm
alpha = 0 // Rake angle in Degree
Fc = 950 // Cutting force in N
Ft = 475 // Thrust force in N
// Sample Problem 2 on page no. 192
printf("\n # PROBLEM 4.2 # \n")
r = t1/t2
mu = ((Fc*sind(alpha)) + (Ft*cosd(alpha)))/((Fc*cosd(alpha))-(Ft*sind(alpha)))
phi = atand((r*cosd(alpha))/(1-r*sind(alpha)))
As = t1*w/sind(phi)
Fs = Fc*cosd(phi) - Ft*sind(phi)
T_s = Fs/As
printf("\n Coefficient of the friction between tool and the chip = %f, \n The ultimate shear stress of the material = %f N/mm^2",mu,T_s)
