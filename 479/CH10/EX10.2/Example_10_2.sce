//Chemical Engineering Thermodynamics
//Chapter 10
//Compressor
//Example 10.2
clear;
clc;

//Given
P1 = 1;//Initial pressure in atm
P2 = 29;//Final pressure in atm
C = 0.05;//Clearance
y = 1.4;//gamma of air

//To calculate the volumetric efficiency and the maximum possible pressure that can be attained in a single stage
//(i)Calulation of volumetric efficiency
//From equation 10.11 (page no 194)
V_E = 1+C-C*(P2/P1)^(1/y);
mprintf('(i)Volumetric efficiency is %f percent',V_E*100);

//(ii)Calculation of maximum pressure 
V_E = 0;//Minimum efficiency
P2 = P1*(((1+C-V_E)/C)^y);
mprintf('\n (ii)The maximum  possible pressure attained is %f atm',P2);
//end