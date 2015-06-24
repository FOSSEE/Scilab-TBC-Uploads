clc
//initialisation of variables
n= 10 //moles
R= 0.08205 //atml/molK
T= 300 //K
V= 4.86 //l
b= 0.0643 //ml mol^-1
a= 5.44 //l^2
//CALCULATIONS
P= n*R*T/V
P1= (n*R*T/(V-n*b))-(a*n^2/V^2)
//RESULTS
printf (' Pressure = %.1f atm',P)
printf ('  \n Pressure = %.1f atm',P1)
