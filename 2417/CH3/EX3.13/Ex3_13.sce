clear;
clc;
printf("\t\t\tProblem Number 3.13\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.13 (page no. 113) 
// Solution

p1=150; //Unit:psia //Initial pressure
T1=1000; //Unit:R //Temperature at pressure p1
p2=15; //Unit:psia //Final pressure
T2=600; //Unit:R //Temperature at pressure p2
Cp=0.24; //Unit:Btu/(LBm*R) //Specific heat for constant pressure process
v1=2.47; //Unit:ft^3/LBm //Specific volume at inlet conditions
v2=14.8; //Unit:ft^3/LBm //Specific volume at outlet conditions

//For a non-flow,constant pressure process
//w/J=deltah=h2-h1=Cp(T2-T1) //deltah=change in enthalpy
//W=w/J
W=Cp*(T1-T2); //W=Work output //Unit:Btu/LBm
printf("The work output of the turbine per pound of working fluid is %f Btu/LBm",W);
