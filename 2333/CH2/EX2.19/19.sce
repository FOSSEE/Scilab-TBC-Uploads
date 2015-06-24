clc 
// Given that
lambda = 5000 // Wavelength in angstrom
d = 5e-4 // Separation between slits in meter
D = 1//  Separation between screen and slit in m
t = 1.5e-6 // Thickness of plate in cm
mu = 1.5 // Refractive index of medium
a1 = 1 // let
a2 = a1 // let
// Sample Problem 19 on page no. 101
printf("\n # PROBLEM 19 # \n")
printf("\n Standard formula used \n (mu - 1)*t = n*lambda\n")
del_l = (mu -1)*t // Calculation of path difference
del_p = 2*%pi/(lambda*1e-10) * del_l // Calculation of phase difference
I = a1^2+a2^2+2*a1*a2*cos(del_p) // Intensity at center of screen
x = D*(mu-1)*t /d
printf("\n Intensity at center of screen is %d.",I)
printf("\n Shift due to sheet is %f mm.",x*1e3)

