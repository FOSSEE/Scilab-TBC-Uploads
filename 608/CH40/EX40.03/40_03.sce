//Problem 40.03: A coaxial cable has an inner core radius of 0.5 mm and an outer conductor of internal radius 6.0 mm. Determine the capacitance per metre length of the cable if the dielectric has a relative permittivity of 2.7.

//initializing the variables:
e0 = 8.85E-12; 
er = 2.7;
ri = 0.0005; // in m
ro = 0.006; // in m

//calculation: 
//capacitance C
C = 2*%pi*e0*er/(log(ro/ri))

printf("\n\n Result \n\n")
printf("\n capacitance is %.3E Farad.",C)