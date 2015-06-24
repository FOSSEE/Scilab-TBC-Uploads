clc 
// Given that
B = 5e-9 // magnetic field in tesla
v = 3e5 // velocity of proton stream in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 37 on page no. 12.46
printf("\n # PROBLEM 37 # \n")
printf(" Standard formula used \n")
printf(" E = 1/2*m*v^2  \n")
r = (1.67e-27 * v) / (e * B)
printf("\n Larmour radius is %e meter.",r)
