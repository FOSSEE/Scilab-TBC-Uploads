clc
//Intitalisation of variables
clear
e= 5.6 //volts
l= 9.8 //cm
t= 1 //hr
T= 25 //C
A= 73.4 //ohm^-1 cm^2
F= 96500 //coloumbs
//CALCULATIONS
v= A/F
pg= e/l
v1= v*pg
L= v1*t*3600
//RESULTS
printf ('Mobility = %.2e cm/sec',v)
printf ('\n Potential gradient = %.3f volt/cm',pg)
printf ('\n Potential gradient = %.3f volt/cm',pg)
printf ('\n Distance moved by ion = %.2f cm',L)
