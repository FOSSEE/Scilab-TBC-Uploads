clc
//initialisation of variables
A1= 0.916 //ft^2
e1= 0.8
s= 0.173 //BTU s^-1 in^-2 R^-4
T= 200 //F
T1= 70 //F
D= 0.292
//CALCULATIONS
q= (A1/10^6)*e1*s*(((T+460)^4/100)-((T1+460)^4/100))
hr= q/(A1*(T-T1))
hc= 0.27*((T-T1)/D)^0.25
//RESULTS
printf ('Heat loss= %.2f Btu/hr',q)
printf (' \n hr= %.2f Btu/sq ft hr F',hr)
printf (' \n hc= %.2f Btu/sq ft hr F',hc)
