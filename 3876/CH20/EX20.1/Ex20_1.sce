//Chapter 20 Radiochemistry

clc;
clear;

//Initialisation of Variables
t= 4.5*10**9 //years
t1= 1590 //years

//CALCULATIONS
l= log10(2)/(t*0.4343)
l1= log10(2)/(t1*0.4343)
r= l1/l
r1= t/t1

//RESULTS
mprintf("Disintegration constant= %.2e yr^-1",l)
mprintf("\nDisintegration constant= %.2e yr^-1",l1)
mprintf("\nRelative proportion= %.2e",r)
mprintf("\nRelative proportion= %.2e",r1)
