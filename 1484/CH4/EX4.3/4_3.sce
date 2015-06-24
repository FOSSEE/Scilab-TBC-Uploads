clc 
//initialisation of variables
x= 11.5 //in
y= 1.2 //in
H= 29 //in
q= 6.24 //gallons per minute
d= 1 //in
g= 32.2 //ft/sec^2
Q= 16 //gallons per min
//CALCULATIONS
Cv= sqrt(x^2/(4*H*y))
Q1= %pi*(d/12)^2*sqrt(2*g*H/12)*q*60/4
Cd= Q/Q1
Cc= Cd/Cv
Cr= (1/Cv^2)-1
//RESULTS
printf ('Coefficient of resistance = %.2f ',Cr)
