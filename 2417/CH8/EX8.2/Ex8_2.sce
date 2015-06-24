//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.2\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.2  (page no. 381) 
// Solution

//Using the computer disk to obtain the neccesary properties
printf("Solution for (a)\n");
//For the conditions given in problem8.1,the properties are found to be
hf=340.49; //Unit:kJ/kg //at 50kPa //enthalpy
h1=hf; //at 50kPa //hf=enthalpy of saturated liquid
h2=h1; //Enthalpy //Unit:kJ/kg
h4=3230.9; //Unit:kJ/kg //enthalpy
h5=2407.4; //Unit:kJ/kg //enthalpy
//Neglecting pump work 
nR=(h4-h5)/(h4-h2); //Thermal efficiency of the cycle
printf("The thermal efficiency of the cycle is %f percentage\n\n",nR*100);

printf("Solution for (b)\n");
//For the pump work,we do not need the approximation,because the computerized tables give us the necessary values directly.
//Assuming that the condensate leaving the condenser is saturated liquid gives us an enthalpy of 340.54 kJ/kg and an entropy of 1.0912 kJ/kg*K for an isentropic compression, the final cond-ition is the boiler pressure of 3Mpa and an entropy of 1.0912 kJ/kg*K. For these values,the program yields an enthalpy of 343.59 kJ/kg*K.The isentropic pump work is equal to 
Pumpwork=343.59-340.54; //Unit:kJ/kg //pumpwork
//The efficiency of the cycle including pump work is
nR=((h4-h5)-Pumpwork)/((h4-h1)-Pumpwork); //Thermal efficiency of the cycle
printf("The thermal efficiency of the cycle including pump work is %f percentage\n\n",nR*100);
//Final results in this problem agree with the result in problem8.1
