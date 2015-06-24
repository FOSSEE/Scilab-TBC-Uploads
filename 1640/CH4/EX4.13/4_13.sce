clc 
//initialisation of variables
L= 100 //ft
H= 2.25 //ft
Cd= 0.95
w= 120 //ft
h= 2 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 3.087*Cd*L*H^1.5
v0= Q/(w*(h+H))
Q1= 3.087*Cd*L*((H+(v0^2/(2*g)))^1.5-(v0^2/(2*g))^1.5)
//RESULTS
printf ('Discharge = %.f cuses ',Q1)
