//Example 2_6
clc();
clear;
//To calculate the dispersive power of the granting in the third order spectrum
k=3
e=1/4000                       //units in cm
lemda=5000*10^-8               //units in cm
theta=asin((k*lemda)/e)
dt_dl=k/(e*cos(theta))
printf("Disperssive power of the granting in the third order spectrum is %.0f",dt_dl)
