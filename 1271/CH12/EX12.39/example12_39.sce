clc 
// Given that
E = 3.5 // energy of He++ ash particle in Mev
B = 8 // magnetic field in tesla
e = 1.6e-19 // charge on an electron in C
// Sample Problem 39 on page no. 12.47
printf("\n # PROBLEM 39 # \n")
E_ = E * 1.6e-13
v = sqrt(2 * E_ / (4 * 1.67e-27))
printf(" Standard formula used \n")
printf(" E = 1/2*m*v^2  \n E = q*B*v \n")
r = (4 * 1.67e-27 * v) / (2 * e * B)
printf("\n Larmour radius is %e meter.",r)
