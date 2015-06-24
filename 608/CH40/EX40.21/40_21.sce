//Problem 40.21: The total loop inductance of an isolated twin power line is 2.185 μH/m. The diameter of each conductor is 12 mm. Determine the distance between their centres.

//initializing the variables:
L = 2.185E-6; // in H/m
u0 = 4*%pi*1E-7; 
ur = 1;
a = 0.012/2; // in m

//calculation:
//distance D
D = a*%e^((L*%pi)/(u0*ur) - 0.25)

printf("\n\n Result \n\n")
printf("\ndistance D is %.2f m",D)