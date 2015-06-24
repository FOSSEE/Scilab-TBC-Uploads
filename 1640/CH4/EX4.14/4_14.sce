clc 
//initialisation of variables
L= 6 //ft
H1= 0.5 //ft
H2= 0.25 //ft
g= 32.2 //ft/sec^2
Cd1= 0.58
Cd2= 0.8
w= 6.24 //lb/ft^3
//CALCULATIONS
Q1= 2*Cd1*sqrt(2*g)*L*(H1-H2)^1.5/3
Q2= Cd2*L*H2*sqrt(2*g*(H1-H2))
Q= (Q1+Q2)*w*3600
//RESULTS
printf ('Discharge = %.f cuses ',Q)
