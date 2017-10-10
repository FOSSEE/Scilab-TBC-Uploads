//Chapter 17 Speed of Reaction Catalysis

clc;
clear;

//Initialisation of Variables
t= 10 //min
c= 0.01 //molar
c1= 0.00464 //molar

//CALCULATIONS
k= (c-c1)/(c*c1*t)
T= 1/(k*0.01)

//RESULTS
mprintf("Velocity constant= %.1f min^-1",k)
mprintf("\nHalf-time period= %.1f min",T)
