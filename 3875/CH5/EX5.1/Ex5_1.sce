clc;
clear;
k=2 
lambda=5*10^-5 //wavlength in cm
theta=30 //angle in degrees

//calculations
e=(k*lambda)/sind(theta) //in cm
mprintf("No. of lines per centimeter = %.0e",(1/e)) //The answer provided in the textbook is wrong

