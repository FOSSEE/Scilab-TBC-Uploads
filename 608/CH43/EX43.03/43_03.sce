//Problem 43.03: Two coils have self inductances of 250 mH and 400 mH respectively. Determine the magnetic coupling coefficient of the pair of coils if their mutual inductance is 80 mH.

//initializing the variables:
La = 250E-3; // in Henry
Lb = 400E-3; // in Henry
M = 80E-3; // in Henry

//calculation:
//coupling coefficient,
k = M/(La*Lb)^0.5

printf("\n\n Result \n\n")
printf("\n coupling coefficient, is %.3f",k)