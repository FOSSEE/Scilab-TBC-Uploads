clc
//Intitalisation of variables
clear
l= 5.6 //cm
F= 96500 //coloumbs
A= 0.1142 //cm^2
t= 2130 //sec
i= 0.005893 //amp
m= 10^-4 //gms
//CALCULATIONS
t= 1-(l*A*F*m/(i*t))
//RESULTS
printf ('Transference number = %.3f ',t)
