// Problem 3.4,Page no.55

clc;clear;
close;

d=10 //mm //Diameter of Punching Hole
t=4 //mm //Thickness of Mild Steel Plate
tou=320 //N/mm**2 //Shear Strength of mild Steel

//Calculations

//Force Required for punching the hole
P=tou*%pi*d*t //N 

//Area of punch in contact with the plate surface
A=(%pi*4**-1*d**2) //mm*2

//Compressive stress
sigma_c=P*A**-1 //N/mm*2

//Result
printf("Force Required for punching the hole is %.2f N",P)
printf("\n Compressive stress is %.f N/mm^2",sigma_c)
