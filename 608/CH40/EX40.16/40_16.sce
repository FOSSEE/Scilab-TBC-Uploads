//Problem 40.16: A coaxial cable has an inner core of radius 1.0 mm and an outer sheath of internal radius 4.0 mm. Determine the inductance of the cable per metre length. Assume that the relative permeability is unity.

//initializing the variables:
u0 = 4*%pi*1E-7; 
ur = 1;
a = 0.001; // in m
b = 0.004; // in m

//calculation:
//inductance L
L = (u0*ur/(2*%pi))*(0.25 + log(b/a))

printf("\n\n Result \n\n")
printf("\n inductance L is %.2E H/m",L)