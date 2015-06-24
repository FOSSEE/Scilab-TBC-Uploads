clc
//Intitalisation of variables
clear
p1= 1.4 //atm
v1= 250 //ml
t1= 21 //c
v2= 300 //ml
t2= 49 //c
//CALCULATIONS
p2= p1*v1*(273+t2)/(v2*(273+t1))
//RESULTS
printf ('Final pressure = %.2f atm',p2)
