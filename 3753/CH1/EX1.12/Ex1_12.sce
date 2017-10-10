//Example number 1.12, Page number 1.38

clc;clear;close


//Variable declaration
lamda=6500 // in Angstrom
theta=30*%pi/180 // radian

//Calculation
a=lamda/sin(theta) // Angstrom

//Result
printf("Slit width value, a= %0.f Angstroms",a)
printf("\nor a = %0.1f micron",(a*10^-4))
