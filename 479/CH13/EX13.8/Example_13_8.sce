//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.8
clear;
clc;

//Given
//Consider the diagram shown in page no 263
w1 = 100;//weight of LiBr entered as feed in the evaporator per hour in Kg
x1 = 0.45;//weight  fraction of LiBr entered as feed
x2 = 0;//weight fraction of steam in the LiBr soln
x3 = 0.65;//weight fraction of LiBr formed as product
H1 = -39;//Enthalpy of 45% solution at 25 deg cel in Kcal/Kg
H3 = -4.15;//Enthalpy of 65% solution at 114.4 deg cel in Kcal/Kg
H2 = 649;//Enthalpy of superheated steam at 100 mmHg and 114.4 deg cel in Kcal/Kg

//To Calculate the heating load required for the process
//According to material balance
w3 = (w1*x1)/x3;//weight of LiBr solution formed after evaporation per hour in Kg
w2 = w1-w3;// weight of steam formed in Kg/hr
//According to energy balance
Q = (w2*H2)+(w3*H3)-(w1*H1);
mprintf('The heat that has to be supplied for this concentration process is %f Kcal/hr',Q);
//end