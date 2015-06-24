clc
//initialisation of variables
Tallowable= 5000 //psi
power= 250 //hp
n= 1800 //rpm
//CALCULATIONS
T= 63000*power/n
d= (16*T/(%pi*Tallowable))^(1/3)
//RESULTS
printf ('Torque= %.2f lb in',T)
printf ('\n diameter=%.2f in',d)
