//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.2
clear;
clc;

//Given
n = 1;//kg moles of a gas
Cv = 5;//specific heat in Kcal/Kgmole
delT = 15;//increase in temperature in deg celsius

//To calculate the change in internal energy
Q = n*Cv*delT;//heat given to the system in Kcal
W = 0;//work done
delE = Q-W;//Change in internal energy
mprintf('Change in internal energy is %f Kcal',delE);
//end