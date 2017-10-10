//An Introduction to Chemical Thermodynamics
//Chapter 3
//Thermochemistry

//Example 3.9
clear;
clc;

//Given 
delHf1 = -92.3;//heat of formation in kJ of HCl
delHf2 = -168.0;//heat of formation in kJ of HCl.100 H2O

//To determine the heat of solution of HCl in 100 H20
delH = delHf2-delHf1;//heat of solution of HCl in 100 H20 in kJ
mprintf('heat of solution of l in 100 H2O = %f kJ',delH);
//end