//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.1
clear;
clc;

//Given
m = 140;//m is the mass of N2 in Kg
P = 4.052*(10^5);//P is the pressure of the system in Pa
V = 30;//V is the volume of the system in m^3
R = 8314.4;// R is the gas constant

//To determine temperature required
T = P*V/((m/28)*R);//T is the temperature of the system in K
mprintf('Temperature of the system is %f K',T);
//end