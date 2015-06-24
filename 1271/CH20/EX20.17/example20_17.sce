clc 
// Given that
Z = 29 // atomic no. of Cu
R = 1.097e7 // Rydberg constant in m^-1
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J sec
// Sample Problem 17 on page no. 20.12
printf("\n # PROBLEM 17 # \n")
printf("Standard formula used \n ")
printf(" nu = a*(Z-b)^2 ........Moseley law \n")
f = 3/4 * (R * c) * (Z-1)^2
E = h * f / 1.6e-16
E_L = 0.931 // let E_L = 0.931 KeV
E_ = E + E_L
printf("\n Ionization potential of K-shell electron of Cu is %f keV.",E_)
