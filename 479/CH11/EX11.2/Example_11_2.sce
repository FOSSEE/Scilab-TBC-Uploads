//Chemical Engineering Thermodynamics
//Chapter 11
//Liquefaction of Gases

//Example 11.2
clear;
clc;

//Given
P1 = 1000*1.033*10^4;//Initial pressure in Kgf/sq m
P2 = 1*1.033*10^4;//Final pressure in Kgf/sq m
T1 = 300;//Inital temperature in K
Cp = 7;//Specific heat of the gas in Kcal/Kgmole K
//Gas obeys the relation: v = (R*T)/P+(b*(T^2))
b = 5.4392*10^-8;//in cubic meter/Kgmole K^2

//To Calculate the temperature of the throttled gas
//From equation (a) (page no 212);which we got after integration 
T2 = 1/((1/T1)-((b/Cp)*((P2-P1)/427)));
mprintf('The throttled gas is cooled to %f K',T2);