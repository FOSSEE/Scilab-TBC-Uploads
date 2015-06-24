clear;
clc;
printf("\t\t\tProblem Number 3.12\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.12 (page no. 112) 
// Solution

Z1=2; //Unit:m //Inlet position
g=9.81 //Unit:m/s^2 //g=The local gravity
V1=40; //Unit:m/s //Inlet velocity
h1=3433.8; //Unit:kJ/kg //Inlet enthalpy
q=1 //Unit:kJ/kg //Heat losses
Z2=0; //Outlet position //unit:m
V2=162; //Unit:m/s //Outlet velocity
h2=2675.5; //Unit:kJ/kg //Outlet enthalpy

//Energy equation is given by
//((Z1*g)) + (V1^2/2) + h1 + q = ((Z2*g) + (V2^2/2) + h2 + w

w= ((Z1*g)/1000) + ((V1^2/2)/1000) + h1 - q - ((Z2*g)/1000) - ((V2^2/2)/1000) - h2 ; //Unit:kJ/kg //Conersation: 1 kJ=1000 J
printf("The work output per kilogram is %f kJ/kg\n",w);
