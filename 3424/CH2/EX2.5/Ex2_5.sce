clc
//Initialization of variables
Ps = 50*(10^3) // N/m^2
h1 = 2 //m
y = 0.90*(9810) //N/m^3
A = 0.36 //m^2
h2 = 2.6 //m
// Calculations
F1 = (Ps+y*h1)*A/1000 //kN
F2 = y*(h2-h1)*A/(2*1000) //kN
Fr = F1 + F2
yO =(F1*(0.3)+F2*(0.2))/Fr
// results
printf ("the magnitude of the resultant force is %.1f kN ",Fr)
printf ("\n the vertical position of Fr is %.3f m ",yO) 
