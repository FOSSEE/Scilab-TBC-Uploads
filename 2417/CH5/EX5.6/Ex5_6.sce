//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.6\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.6  (page no. 190) 
// Solution

//For constant-temperature,reversible vaporization, hfg=deltah=T*deltas=T*sfg
hfg=(388.12+460)*(1.1042); //Evap. Enthalpy //Unit:Btu/lbm
printf("By considering the process to be a reversible,constant-temperature,hfg for saturated steam at 115 psia is %f Btu/lbm",hfg); //ans is wrong in the book
//Values are matched with tabulated values.Use of -459.67 F for absolute zero,which is the value used in table,gives almost exact agreement.
