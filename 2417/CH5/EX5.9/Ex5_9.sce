//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.9\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.9  (page no. 193) 
// Solution

//For the wet mixture,hx=hf+(x*hfg),solving for x gives us
//Using table 1,we have,
hx=900; //Btu/lbm //Enthalpy of wet mixture at 90F
hf=58.07; //Btu/lbm //saturated liquid enthalpy
hfg=1042.7; //Btu/lbm //Evap. Enthalpy
x=(hx-hf)/hfg; //quality
printf("The quality is %f percentage of a wet steam at 90F\n",x*100);
