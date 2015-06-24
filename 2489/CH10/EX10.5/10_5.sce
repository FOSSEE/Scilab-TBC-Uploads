clc
//Intitalisation of variables
clear
p= 10 //atm
x1= 0.012
x2= 0.104
//CALCULATIONS
kp1= 256*x1^2/(27*(1-x1)^4*p^2)
p1= sqrt(256*x2^2/(kp1*27*(1-x2)^4))
//RESULTS
printf ('Kp = %.2e  ',kp1)
printf ('\n Pressure at equillibrium = %.f atm  ',p1)
