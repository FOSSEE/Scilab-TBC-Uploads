//example 9
//Mixing of Hot and Cold Waters in a Shower
clear
clc
disp('We take the chamber as system.Then,there are two inlets and one exit ')
h3=78.02 //enthalpy at 110 F in Btu/lbm
h2=18.07 //enthalpy at 50 F in Btu/lbm
h1=107.99 //enthalpy at 140F in Btu/lbm
y=(h3-h2)/(h1-h3) //mass ratio of hot to cold water 
printf("\n The mass ratio of hot to cold water is = %.1f . \n",y);