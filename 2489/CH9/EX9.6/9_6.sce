clc
//Intitalisation of variables
clear
dt= 0.0265 //deg
c= 5*10^-3 //M
kf= 1.86 //deg
//CALCULATIONS
i= dt/(c*kf)
//RESULTS
printf ('i of the solution = %.2f ',i)
