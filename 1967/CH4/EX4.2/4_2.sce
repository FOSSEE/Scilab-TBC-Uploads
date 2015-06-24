clc
//initialisation of variables
clear
p1= 10 //atm
p2= 1 //atm
T1= 25 //C
n= 2/5
//CALCULATIONS
T2= (p1/p2)^n*(273+T1)-273
//RESULTS
printf ('Final temperature = %.f C',T2)
