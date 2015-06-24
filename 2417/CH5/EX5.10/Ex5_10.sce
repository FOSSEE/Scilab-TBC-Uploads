//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.10\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.10  (page no. 194) 
// Solution

//For the wet mixture,hx=hf+(x*hfg),solving for x gives us
//Using table 1,we have,
hx=2000; //kJ/kg //Enthalpy of wet mixture at 30 C
hf=125.79; //kJ/kg //saturated liquid enthalpy
hfg=2430.5; // //Evap. Enthalpy //kJ/kg
x=(hx-hf)/hfg; //quality
printf("The quality is %f percentage of a wet steam at 30 C\n",x*100);
