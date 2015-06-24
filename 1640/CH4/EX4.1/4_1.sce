clc 
//initialisation of variables
p= 70 //per cent
Cd= 0.6
Q= 50 //million gallons
H= 2 //ft
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
Q1= p*Q*10^6*10/(100*w*24*3600)
L= Q1*3/(2*Cd*sqrt(2*g)*H^1.5)
//RESULTS
printf ('length of the weir = %.2f ft ',L)
