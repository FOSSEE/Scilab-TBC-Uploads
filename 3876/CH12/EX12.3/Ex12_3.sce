//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
H= -94.052 //kcal
H1= -68.32 //kcal
H2= 11.718 //kcal

//CALCULATIONS
H3= 6*H+3*H1-H2

//RESULTS
mprintf("Heat of combustion of benzene = %.0f cal",H3)
