clear
clc
//initialisation of variables
V= 90 //ft/sec
a= 30 //degrees
u= 45 //ft/sec
//CALCULATIONS
w= V*cosd(a)
f= sqrt(V^2-w^2)
b= atand(f/(w-u))
V1= sqrt(f^2+(u-f*cotd(b))^2)
//RESULTS
printf ('absolute velocity of water at the exit = %.1f ft/sec',V1)
