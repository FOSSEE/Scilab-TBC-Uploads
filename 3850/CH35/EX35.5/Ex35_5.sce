
//To Calculate the Amount of Current

//Example 35.5

clear;

clc;

B=20*10^-3;//Magnetic field inside the solenoid in Tesla

n=20*10^2;//Number of turns per unit metre

u0=4*%pi*10^-7;//Permiability of Vaccum

i=B/(u0*n);//Current flowing through the solenoid in Amperes

printf("Current flowing through the solenoid = %.1f A",i);
