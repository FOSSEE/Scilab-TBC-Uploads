clc
//Intitalisation of variables
clear
v1= 360 //ml
T1= 15 //C
v2= 480 //ml
//CALCULATIONS
T2= v2*(273+T1)/v1
Tc= T2-273
//RESULTS
printf ('Centigrade temperature = %.f C',Tc)
