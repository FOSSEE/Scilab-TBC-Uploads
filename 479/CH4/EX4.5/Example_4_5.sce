//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.5
clear;
clc;

//Given
//Air at 20 deg celsius
//P1 = 250;initial pressure in atm
//P2 = 10;final pressure after throttling in atm

//To calculate the entropy change
//According to the given conditions from figure4.5(page no 103)
S1 = -0.38;//initial entropy in Kcal/Kg K
S2 = -0.15;//final entroy in Kcal/Kg K
del_S = S2-S1;
mprintf('Change in entropy for the throttling process is %f Kcal/Kg K',del_S);
//From figure 4.6(page no 104), the final temperature is -10 deg celsius
//end 