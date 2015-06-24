
clc 
//initialisation of variables
g= 32.2 //ft/sec^2
H= 25 //ft
l= 2.5 //ft
b= 5 //ft
Cd= 0.64
Q= 3200 //cuses
L=150 //ft
C=3.2
depth=0.5 //ft
A1=5000000 //sq yards
//CALCULATIONS
Q1= Cd*l*b*sqrt(2*g*H)
n= Q/Q1
h= (Q/(3.2*L))^(2/3)
hr=h-depth
Area=A1*9
V=Area*hr
//RESULTS
printf ('number of spilways = %.f  ',n)
printf("\n Volume of extra water stored = %d cu ft",V)
