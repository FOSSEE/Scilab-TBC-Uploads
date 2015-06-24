clc 
//initialisation of variables
y1= 32.47*10^-4
y2= 34.71*10^-4 
x1= 1.625
x2= 1.107
R= 1.987 //cal mole^-1 K^-1
//CALCULATIONS
slope= (x2-x1)/(y2-y1)
Hvap= -slope*2.303*R
//RESULTS
printf ('Heat of vapourization= %.f cal mole^-1',Hvap)
