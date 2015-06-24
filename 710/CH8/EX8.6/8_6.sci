clc();
clear;

//To calculate the magnetic field

mew0=4*(%pi)*10^-7;          //molecular magnetic moment
M=4;                         //magnetisation in A/m
T=310;                       //temperature in K
C=1.9*10^-3;                //Curie's constant
B=(mew0*M*T)/C             //magnetic field in T
printf("Magnetic field is %f T",B);