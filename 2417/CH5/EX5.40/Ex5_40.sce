//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.40\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.40  (page no. 226) 
// Solution

//Using the Mollier chart,
h1=2942; //kJ/kg //initial enthalpy
//Proceeding as shown in figure 5.21b,that is,vertically at constant entropy to a pressure of 0.1 MPa,gives us
h2=2512; //kJ/kg //final enthalpy
printf("Neglecting kinetic & potential energy,The change in enthalpy of the steam is %f kJ/kg",h1-h2);
