clc
//initialisation of variables
Qh= 70000 //Btu/hr
T= 15 //F
T1= 72 //F
//CALCULATIONS
COP= (T1+460)/((T1+460)-(T+460))
W= Qh/COP
//RESULTS
printf ('Minimum power required to drive the heat pump= %.f Btu/hr',W)
