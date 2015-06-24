//Problem 43.05: Two coils connected in series have self inductance of 40 mH and 10 mH respectively. The total inductance of the circuit is found to be 60 mH. Determine (a) the mutual inductance between the two coils, and (b) the coefficient of coupling.

//initializing the variables:
La = 40E-3; // in Henry
Lb = 10E-3; // in Henry
L = 60E-3; // in Henry

//calculation:
//mutual inductance, M
M = (L - La - Lb)/2
//coupling coefficient,
k = M/(La*Lb)^0.5

printf("\n\n Result \n\n")
printf("\n mutual inductance, M is %.2E H",M)
printf("\n coupling coefficient, is %.3f",k)