//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.7
clear;
clc;

//Given
//Basis: 1 hour
m = 10;//mass of air in Kg
T = 293;//Constant temperature throughout the process in K
//P1 = 1;//Initial pressure in atm
//P2 = 30;//Final pressure in atm
//According to the given data and using the graph  or figure A.2.7 given in page no 105
S1 = 0.02;//Initial entropy in Kcal/Kg
S2 = -0.23;//Final entropy in Kcal/Kg
H1 = 5;//Initial enthalpy in Kcal/Kg
H2 = 3;//Final enthalpy in Kcal/Kg

W = -((H2-H1)+T*(S2-S1))*m*(427/(3600*75));
mprintf('The horse power of the compressor is %f hp',W);
//end