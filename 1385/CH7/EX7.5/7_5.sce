clc
//initialisation of variables
m= 0.01 //M
CB= 235 //mm
R= 426.3 //ohms
M= 265 
C= 0.448
//CALCULATIONS
k= M*C/(R*CB)
A= k*1000/m
//RESULTS
printf (' equivalent conductance= %.1f ohms',A)
