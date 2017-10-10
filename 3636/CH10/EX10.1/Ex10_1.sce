clc;
clear;
alpha=10^2 //absorption coefficient in cm^-1
absorption=0.2 //80% absorption represented in decimal format

//Calculation
d=(1/alpha)*log(1/absorption)

mprintf("Thickness of silicon= %.3f cm",d)
