//Chapter 12 Thermodynamics Thermodynamic chemistry

clc;
clear;

//Initialisation of Variables
H= -94.052 //kcal
H1= -68.317 //kcal
H2= -780.98 //kcal

//CALCULATIONS
H3= 6*H+3*H1-H2

//RESULTS
mprintf("Heat of formation = %.3f kcal",H3)
