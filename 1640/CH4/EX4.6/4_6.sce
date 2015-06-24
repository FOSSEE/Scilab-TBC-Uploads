clc 
//initialisation of variables
H= 2.5 //ft
L= 10 //ft
A= 10 //miles
p= 30 //per cent
a= 2 //in/hr
w= 2 //ft
//CALCULATIONS
Q= L*1760^2*3^2*a*p/(60*60*12*100)
n= ((Q/(3.33*H^1.5))-(L-0.1*w*H))/(L-0.1*w*H)
//RESULTS
printf ('n = %.f  ',n)
