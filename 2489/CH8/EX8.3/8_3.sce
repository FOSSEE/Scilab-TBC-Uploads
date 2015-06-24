clc
//Intitalisation of variables
clear
T2= 100 //C
T1= 0 //C
T3= 357 //C
T4= 25 //C
//CALCULATIONS
e1= (T2-T4)/(273+T2)
e2= (T3-T4)/(273+T3)
//RESULTS
printf ('Efficiency = %.3f ',e1)
printf ('\n Efficiency = %.3f ',e2)
