//Example number 5.10, Page number 88

clc;clear;
close;

//Variable declaration
delta_x=10**-8;     //length of box(m)
m=9.1*10**-31;    //mass(kg)
h=6.626*10**-34;   //plank constant
//Calculation
delta_v=h/(m*delta_x)/10**3;     //uncertainity in velocity(km/s)
//Result
printf("uncertainity in velocity is %.1f km/s",delta_v)
