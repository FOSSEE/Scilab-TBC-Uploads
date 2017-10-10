//Example 3.21
clear;
clc;

//Given 
delE=-240500;//energy liberated in J mol^-1
T1=300;//initial temperature in K
Cv=24.15;//specific heat of water at constant volume in J K^-1 mol^-1

//To determine maximum temperature
T2=(-delE/Cv)+300;//maximum temperature in K
mprintf('The maximum temperature = %i K',T2);
//end