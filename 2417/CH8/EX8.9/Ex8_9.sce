//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.9\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.9  (page no. 388) 
// Solution

//The Mollier chart provides a convenient way of solving this problem.Expanding from 980F,400 psia,s=1.7567 to 200 psia yields a final enthalpy of 1413 Btu/lbm.Expanding from 200 psia ans  an enthalpy of 1515 Btu/lbm to 14.696 psia yields a final enthaply of 1205 Btu/lbm. 
h4=1515; //Unit:Btu/lbm //enthalpy
h5=1205; //Unit:Btu/lbm //enthalpy
h7=1413; //Unit:Btu/lbm //enthalpy
h1=180.15; //Unit:Btu/lbm //enthalpy
nreheat=((h4-h5)+(h4-h7))/((h4-h1)+(h4-h7)); //The efficiency of the reheat cycle
printf("The efficiency of the reheat cycle is %f percentage",nreheat*100);
//It is apparent that for the conditions of this problem,the increase in efficiency is not very large.The final condition of the fluid after the second expansion is superheated steam at 
//14.696 psia.By condensing at this relatively high pressure condition,a large amount of heat is rejected to the condenser cooling water.7
