clc
//initialisation of variables
clear
L2= 6000 //cal
v= 3 
T= 25 //C
T1= 0 //C
//CALCULATIONS
R= ((L2/(v*4.576))*(T-T1)/((273+T1)*(273+T)))
r= 10^((L2/(v*4.576))*(T-T1)/((273+T1)*(273+T)))
//RESULTS
printf ('Ratio = %.3f ',R)
printf ('\n Relative change in mean ionic coefficient = %.2f ',r)
