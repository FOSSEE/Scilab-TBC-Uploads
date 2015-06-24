clc
//initialisation of variables
T= 120 //F
T1= 1500 //F
A= 64/144
F= 0.86
Fe= 1
s= 0.173 //BTU s^-1 in^-2 R^-4
//CALCULATIONS
q= (A/10^6)*F*Fe*s*(((T1+460)^4/100)-((T+460)^4/100))
//RESULTS
printf ('Heat loss= %.f Btu/hr',q)
