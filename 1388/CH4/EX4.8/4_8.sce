clc
//initialisation of variables
T1= 273.16 //K
R= 1.987 //cal /mol K
R1= 0.08205 //J /mol K
n= 10 //moles
V1= 22.4 //lit
a= 1.36
Cv= 4.9
//CALCULATIONS
T2= T1-(R*a*(n-1)/(R1*n*Cv*V1))
//RESULTS
printf (' temperature= %.2f K',T2)
