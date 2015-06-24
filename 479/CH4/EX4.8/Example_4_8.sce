//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.1
clear;
clc;

//Given
//Basis: 1 Kg of steam
//P1 = 30;Intial pressure in Kgf/cm^2
//P2 = 3;Final pressure in Kgf/cm^2
//T = 300;//Operating temperature
//From figure A.2.8, 
H1 = 715;//Initial enthalpy of steam in Kcal/Kg
H2 = 625;//Final enthalpy of steam in Kcal/Kg
S1 = 1.56;//Initial entropy of steam in Kcal/Kg K
S2 = 1.61;//Final entropy of steam in Kcal/Kg K
Q = -1;//heat loss in Kcal/Kg
To = 298;//The lowest surronding temperature in K

//To calculate the effectiveness of the process
W = (-(H2-H1)+Q);//Actual work output by the turbine in Kcal
//The maximum or available work can be calculated from equation 4.14
del_B = -((H2-H1)-(To*(S2-S1)));// Maximum work that can be obtained in Kcal
E = (W/del_B)*100;
mprintf('The effectiveness of the process is %f percent',E);
//end