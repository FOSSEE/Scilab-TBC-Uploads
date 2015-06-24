//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.2
clear;
clc;

//Given
T1 = 25+273;//Initial temperature in K
T2 = 450+273;//Final temperature in K
//Specific heat of sulphur dioxide is given by the relation:
//Cp = 7.116+9.512*10^-3*T+(3.511*10^-6)*T^2

//To Calculate the sensible heat required
//Basis: 1 Kgmole of sulphur dioxide
Q = 7.116*(T2-T1)+(9.512*10^-3*(T2^2-T1^2)/2)+((3.51*10^-6)*(T2^3-T1^3)/3);
mprintf('Sensible heat required is %d Kcal/Kgmole',Q);
//end