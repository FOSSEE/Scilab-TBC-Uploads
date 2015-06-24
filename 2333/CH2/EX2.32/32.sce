clc 
// Given that
n = 4 // Order of ring
m = 12 // Order of ring
o = 20 // Order of ring
D_n = 0.4 // Diameter of 4th fringe in cm
D_m = 0.7 // Diameter of 12th fringe in cm

// Sample Problem 32 on page no. 100
printf("\n # PROBLEM 32 # \n")
printf("\n Standard formula used \n D_m^2 -D_n^2 = 4*p*r*lambda\n")
D_o = sqrt((4*(o-n)/(4*(m-n)))* ((D_m*1e-2)^2-(D_n*1e-2)^2) + (D_n*1e-2)^2)
printf("\n Diameter of 20th ring is %f cm",D_o*1e+2)

