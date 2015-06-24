//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.10\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.10  (page no. 389) 
// Solution

//Some of the property data required was found in problem8.4.In addition we have,
//at 200 psia,s=1.7566 Btu/lbm*R,
h7=1413.6; //Unit:Btu/lbm //Enthalpy
//at 200 psia,s=1.8320 Btu/lbm*R,
h4=1514.0; //Unit:Btu/lbm //Enthalpy
//at 14.696 psia,s=1.8320 Btu/lbm*R,
h5=1205.2; //Unit:Btu/lbm //Enthalpy
h1=180.17; //Unit:Btu/lbm //enthalpy
//Using these data,
nreheat=((h4-h5)+(h4-h7))/((h4-h1)+(h4-h7)); //The efficiency of the reheat cycle 
printf("The efficiency of the reheat cycle is %f percentage",nreheat*100);
