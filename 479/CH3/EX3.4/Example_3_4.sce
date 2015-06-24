//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.4
clear;
clc;

//Given
W = 0;//work done during the process
P1 = 1;//Initial pressure in atm
P2 = 10;//Final pressure in atm
V2 = V1;//Initial & final volume are equal
Cv = 0.23//specific heat at constant volume in Kcal/Kg deg K
//(delQ/delT)=Q
Q = 1.3;//Rate of heat addition in Kcal/min
m = 2.5//Weight of an ideal gas in Kg
T1 = 298//Initial temperature in Kelvin

//To calculate the time taken for the gas to attain 10 atm
//Q = m*Cv*(delT/delt)=1.3
T2 = (P2*T1)/(P1);//Final temperature in Kelvin
t = ((m*Cv)/1.3)*(T2-T1);//time taken in minutes
mprintf('The time taken to attain a pressure of 10 atm is %f hrs',t/60);
//end