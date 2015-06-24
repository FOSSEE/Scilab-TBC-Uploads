clc 
// Given that
d1= 0.534*10^3 // densiy of Li in kg/m^3
d2= 0.971*10^3 // densiy of Na in kg/m^3
d3= 0.86*10^3 // densiy of K in kg/m^3
w1 = 6.939 // atomic weight of Li 
w2 = 22.99 // atomic weight of Na
w3 = 39.202 // atomic weight of K
h = 6.62e-34 // Planck constant in J sec
m = 9.1e-31 // mass of an electron in kg
NA = 6.023e26 // Avogadro no.
e = 1.6e-19 // charge on an electron in C
// Sample Problem 9 on page no. 16.17
printf("\n # PROBLEM 9 # \n")
printf("Standard formula used \n")
printf("E = h^2 / (8 * m * pi^2) * (3*pi^2*N/V)^2/3 \n")
// For Li
n1 = NA * d1/w1
E1 = h^2/(8*%pi^2*m)*(3*%pi^2*n1)^(2/3)
// For Na
n2 = NA * d2/w2
E2 = h^2/(8*%pi^2*m)*(3*%pi^2*n2)^(2/3)
// For K
n3 = NA * d3/w3
E3 = h^2/(8*%pi^2*m)*(3*%pi^2*n3)^(2/3)
printf("\n Fermi Energy \n For Li is %f eV.\n For Na is %f eV. \n For K is %f eV",E1/e,E2/e,E3/e)

