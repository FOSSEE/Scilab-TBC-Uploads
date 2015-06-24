clc 
// Given that
E = 1 // energy of He+ in kev
r = 0.188 // Larmour radius in meter
e = 1.6e-19 // charge on an electron in C
// Sample Problem 38 on page no. 12.46
printf("\n # PROBLEM 38 # \n")
printf(" Standard formula used \n")
printf(" E = 1/2*m*v^2  \n E = q*B*v \n")
E_ = E * 1.6e-16
v = sqrt((2 * E_) / (4 * 1.67e-27))
B = (4 * 1.67e-27 * v) / (e * r)
printf("\n Magnetic field is %e tesla.",B)
