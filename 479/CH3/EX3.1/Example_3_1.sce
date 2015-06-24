//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.1
clear;
clc;

//Given
W = -((2*745.6*(10^-3)/4.18)*3600);//work added to the system in Kcal/hr
m = 10;//Amount of fluid in tank in Kg
Q = -378;//Heat losses from the system in Kcal/hr

//To calculate the change in internal energy
delE=(Q-W)/m;// Change in internal energy in Kcal/hr kg
mprintf('Change in Internal energy is %f Kcal/hr Kg',delE);
//end