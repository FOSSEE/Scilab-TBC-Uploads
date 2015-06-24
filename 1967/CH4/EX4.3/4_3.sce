clc
//initialisation of variables
clear
p1= 20 //atm
p2= 200 //atm
T1= 25 //C
n= 2/7
//CALCULATIONS
T2= (p1/p2)^n*(273+T1)-273
//RESULTS
printf ('Final temperature = %.f C',T2)
