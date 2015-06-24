clc 
//initialisation of variables
L= 3 //ft
H1= 1.5 //ft
H2= 0.75 //ft
Cd= 0.62
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 2*Cd*60*L*sqrt(2*g)*(H1^1.5-H2^1.5)/3
//RESULTS
printf ('Discharge per minute= %.1f cubic ft per minute',Q)
