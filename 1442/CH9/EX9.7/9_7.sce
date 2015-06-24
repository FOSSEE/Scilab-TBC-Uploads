clc
//initialisation of variables
e= 0.82
m= 5 //kg/s
T3= 450 //C
T1= 200 //C
//CALCULATIONS
Q= e*m*1.0035*(T3-T1)
//RESULTS
printf (' rate of transfer = %.1f kW',Q)
