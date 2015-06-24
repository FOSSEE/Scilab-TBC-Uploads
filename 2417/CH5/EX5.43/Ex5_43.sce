//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.43\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.43  (page no. 229) 
// Solution

//From the saturation table,500 psia corresponds to a temperature of 467.13F,and the saturated vapor has an enthalpy of 1205.3 Btu/lbm.At 500 psia and 800 F,the       saturated vapor has an enthalpy of 1412.1 Btu/lbm.Because this process is a steady-flow process at constant pressure,the energy equation becomes q=h2-h1,assuming    that differences in the kinetic energy and potential energy terms are negligible.Therefore,
h2=1412.1; //Btu/lbm //final enthalpy
h1=1205.3; //Btu/lbm //initial enthalpy
q=h2-h1; //heat added //Btu/lbm
printf("%f Btu/lbm heat per pound of steam was added\n",q);
