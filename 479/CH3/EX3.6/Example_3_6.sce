//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.6
clear;
clc;

//Given
R = 1.98;//gas constant in kcal/Kgmole deg K
T = 293;//Temperature in K
M = 29;//Molecular weight of air

//To calculate the flow work per kg of air
//W=(P*V)=(R*T)
W = R*T;//Flow work in Kcal/Kg mole
W1 = W/M;
mprintf('Flow work is %f Kcal/Kg',W1);
//end