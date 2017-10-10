//Example number 1.11, Page number 1.38

clc;clear;close


//Variable declaration
lamda=5.5*10**-7  // in m
d=2.54 // in m
x=1.22// unitless
//Calculation
dtheta=(x*lamda)/d // radian

//Result
printf("Smallest angular separation of two stars = %0.3e radian",dtheta)
