//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.1\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.1  (page no. 380) 
// Solution

//From the Steam Tables or Mollier chart in Appendix 3,we find that
hf=340.49; //Unit:kJ/kg //at 50kPa //enthalpy
h1=hf; //at 50kPa //hf=enthalpy of saturated liquid //Unit:kJ/kg
h4=3230.9; //Unit:kJ/kg //enthalpy
h5=2407.4; //Unit:kJ/kg ////enthalpy
//Here,point 5 is in the wet steam region.
printf("Solution for (a)\n");
//Neglecting pump work (h2=h1) gives
nR=(h4-h5)/(h4-h1); //Thermal efficiency of the cycle
printf("The thermal efficiency of the cycle is %f percentage\n\n",nR*100);

printf("Solution for (b)\n");
p2=3000; //Unit:kPa //Upper pressure
p1=50; //Unit:kPa //Lower pressure
vf=0.001030; //Specific volume of saturated liquid  //m^3/kg
Pumpwork=(p2-p1)*vf; //Unit:kJ/kg //pump work
//The efficiency of the cycle including pump work is
nR=((h4-h5)-Pumpwork)/((h4-h1)-Pumpwork); //Thermal efficiency of the cycle
printf("The thermal efficiency of the cycle including pump work is %f percentage\n\n",nR*100);
