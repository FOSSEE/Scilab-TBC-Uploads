clc 
// Given that
E = 70 // energy of betatron synchrotron in Mev
r = 0.28 // radius in meter
e = 1.6e-19 // charge on an electron in C
// Sample Problem 33 on page no. 12.45
printf("\n # PROBLEM 33 # \n")
printf(" Standard formula used \n")
printf(" E = c* e * r* B \n")
E_ = E * 1.6e-13
B = E_ / (3e8 * e * r)
printf("\n Magnitude of magnetic field is %f T.",B)
