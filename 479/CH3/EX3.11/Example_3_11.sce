//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.11
clear;
clc;

//Given
H1 = 680.6;//Enthalpy of entering steam at 6Kgf/cm^2 &200 deg cel in Kcal/Kg
u1 = 60;//velocity at which steam entered the nozzle in m/sec
u2 = 600;//velocity at which steam left the nozzle in m/sec
g = 9.8;
Hg = 642.8; Hlq = 110.2;//Enthalpy of saturated vapour & saturated liquid at 1.46 Kgf/cm^2 respectively

//To calculate the quality of exit steam
H2 = H1+((u1^2)-(u2^2))/(2*g*427);//enthalpy of leaving steam in Kcal/Kg
x = (H2-Hlq)/(Hg-Hlq);
mprintf('The quality of exit steam is %f percent',x*100);
//end