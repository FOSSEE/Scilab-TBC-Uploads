clc
//Intitalisation of variables
clear
t= 5 //cm
c= 0.01 //M
ir= 0.245
//CALCULATIONS
e= -log10(ir)/(t*c)
//RESULTS
printf ('Extinction coefficient = %.2f ',e)
