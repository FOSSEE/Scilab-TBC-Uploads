clc
// Given That
E_0 = 50 // magnitude of electric field  in N/C
l = 100 // radius of cylinder in cm
a = 5 // area of cross section in cm^2
c = 3e8 // speed of light in m/s
epsilon_0 = 8.85e-12 // permittivity of free space
//Sample Problem 2 Page No. 79
printf("\n # Problem 2  # \n ")
v = a*1e-4 *l*1e-2//calculation of volume of cylinder
u = (1/2)*epsilon_0*E_0^2//calculation of energy intensity
U = v*u//calculation of Energy contained in cylinder
I = u*c//calculation of Intensity of wave
 printf("Energy contained in cylinder is %eJ \n", U) 
printf("Intensity of wave is %fW/m^2", I)

