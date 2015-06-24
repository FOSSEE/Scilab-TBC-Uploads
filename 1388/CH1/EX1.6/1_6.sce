clc
//initialisation of variables
n= 10 //moles
T= 300 //K
V= 4.86 //l
R= 0.08205 //atml/molK
v= 0.1417 //l
T1= 305.7 //K
//CALCULATIONS
b= v/2
a= 2*v*R*T1
P= ((n*R*T)/(V-n*b))*2.71^(-a*n/(V*R*T))
//RESULTS
printf (' Pressure = %.1f atm',P)
