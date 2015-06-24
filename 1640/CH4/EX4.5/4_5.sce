clc 
//initialisation of variables
g= 32.2 //ft/sec^2
Cd= 0.62
L= 7.573 //ft
H= 1.2 //ft
S= 2.85 //ft
//CALCULATIONS
Q1= 2*Cd*sqrt(2*g)*L*H^1.5/3
Q2= 3.33*L*H^1.5
Q3= sqrt(2*g)*L*H^1.5*(0.405+(0.00984/H))
He= H+0.004
Q4= (3.227+0.435*(He/S))*L*He^1.5
//RESULTS
printf ('Q = %.2f cuses ',Q1)
printf ('\n Q = %.2f cuses ',Q2)
printf ('\n Q = %.2f cuses ',Q3)
printf ('\n Q = %.2f cuses ',Q4)
