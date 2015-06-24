//Problem 9.04: The wing span of a metal aeroplane is 36 m. If the aeroplane is flying at 400 km/h, determine the e.m.f. induced between its wing tips. Assume the vertical component of the earth’s magnetic field is 40 μT

//initializing the variables:
s = 36; // in m
v = 400; // in km/h
u0 = 4*%pi*1E-7;
B = 40E-6; // in Tesla

//calculation:
v0 = v*5/18
E = B*s*v0

printf("\n\nResult\n\n")
printf("\n Induced e.m.f. = %.2f V\n",E)