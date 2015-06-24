//Chemical Engineering Thermodynamics
//Chapter 11
//Liquefaction of Gases

//Example 11.3
clear;
clc;

//Given
//From the figure 11.8 (page no 216) & from figure A.2.7
H3 = 0;
H7 = -47;//in Kcal/Kg
H6 = -93;//in Kcal/Kg
H8 = 7;//in Kcal/Kg

//To Calculate the fraction of air liquified at steady state and temperature of air before throttling
//(i)Calculation of fraction of air liquified
//From equation 11.3 (page no 215)
x = (H8-H3)/(H8-H6);
mprintf('The fraction of air liquified is %f',x);

//(ii)Calculation of temperature 
H4 = H3+(H7*(1-x))-(H8*(1-x));//enthalpy of the gas before throttling
//From figure A.2.7 temperature corresponds to pressure 160 atm and the enthalpy H4 is
T = -112;
mprintf('\n The temperature of air before throttling is %d deg celsius',T);
//end