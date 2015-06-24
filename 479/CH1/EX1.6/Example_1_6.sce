//Chemical Engineering Thermodynamics
//Chapter 1
//Introduction

//Example 1.6
clear;
clc;

//Given
n = 1;//n is the Kg mole of ideal gas.
P1 = 700*(10^4);//P1 is the initial pressure of the system in N/(m^2)
P2 = 638*(10^4);//P2 is the final pressure of the system in N/(m^2)
T = 300;//T is temperature of the system in K
R = 8314.4;//R is gas constant in Nm/Kgmole deg K

//To calculate the work done
W = n*R*T*log(P1/P2);//W is the work done by the system in Nm
mprintf('Work done by the system is %4.2e Nm',W);
//end