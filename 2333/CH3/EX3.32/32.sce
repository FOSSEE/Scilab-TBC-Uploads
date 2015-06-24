clc 
// Given that
f = 4 // Focal length of telescope objective in m
d = 80 // Distance of window in m
l = 2 // Separation between wires of mesh in cm
a = 3  // Diameter of lens of telescope in cm
lambda = 5500 // wavelength of light in angstrom

// Sample Problem 32 on page no. 174
printf("\n # PROBLEM 32 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n\n")
theta = 1.22*lambda*1e-10/(a*1e-2) // Angle which can be resolved
alpha = (l*1e-2/d) // Angle projected by wire mesh
if (theta<alpha) then
    printf("As theta = %e degree is smaller than alpha = %e degree\n so telescope will be able to observe wire mesh",theta,alpha)
else
   printf("As theta = %e degree is greater than alpha = %e degree so telescope will not be able to observe wire mesh",theta,alpha) 
end
// alpha is 2.25e-4 degree in book
