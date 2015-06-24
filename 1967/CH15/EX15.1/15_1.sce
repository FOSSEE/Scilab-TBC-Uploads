clc
//initialisation of variables
clear
p1= 17.222 //mm
p2= 17.535 //mm
n= 1 //mole
m= 1000 //gms
M= 18.016 //gms
//CALCULATIONS
a= p1/p2
N1= (m/M)/(n+(m/M))
//RESULTS
printf ('activity = %.4f ',a)
printf ('\n activity coefficient = %.4f ',N1)
