clc
//initialisation of variables
P= 7 //bar
P1= 1.4 //bar
T= 260 //C
T1= 251 //C
h= 2974.9 //J/gm
//CALCULATIONS
dT= T-T1
Mj= dT/(P-P1)
//RESULTS
printf ('Joule-Thomson coefficient= %.2f C/bar ',Mj)
