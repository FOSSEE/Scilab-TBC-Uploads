clc 
// Given that
q = 1e-8 // charge uniformly spread over metallic sphere in C
r = .1 //radius of sphere in m
d = 7 // distance of a point from centre of the sphere in cm
d_ = .5 // distance of another point from centre of the sphere in m
e0 = 8.85e-12 // permittivity of space
// Sample Problem 19 on page no. 10.43
printf("\n # PROBLEM 19 # \n")
E1 = (1 / (4 * %pi * e0) * (q / r^2))
E2 = 0 //because sphere is metallic
E3 = (1 / (4 * %pi * e0) * (q / d_^2))
printf("Standard formula used \n E = (1 / (4 * pi * e0) * (q / r^2)). \n")
printf(" Electric field intensity-\n (1) On the surface of the sphere = %e N/C,\n (2) At first point = %d N/C,\n (3) At second point = %e N/C",E1,E2,E3)
