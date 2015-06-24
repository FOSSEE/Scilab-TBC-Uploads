//Chemical Engineering Thermodynamics
//Chapter 10
//Compressor
//Example 10.1
clear;
clc;

//Given
V1 = 2.7;//flow rate of CO2 in cubic meter/min
T1 = 273-51;//temperature in K
P1 = 1;//initial pressure in Kgf/sq cm
P2 = 10;//final pressure in Kgf/sq cm
y = 1.3;//gamma
v1 = 0.41;//specific volume in cubic meter/Kg
H1 = 158.7;// initial enthalpy in Kcal/Kg
H2 = 188.7;//final enthalpy in Kcal/Kg

//process is isentropic
//To calculate the horsepower required

//(i)Assuming ideal gas behaviour
//From equation 10.3 (page no 189)
W = (y/(y-1))*(P1*1.03*10^4*V1)*(1-(P2/P1)^((y-1)/y));//work in m Kgf/min
W1 = W/4500;
mprintf('(i)The horsepower required is %f hp',W1);

//(ii)Using the given data for CO2
//From equation 10.2 (page no 189)
W = -(H2 - H1);//work in Kcal/Kg
M = V1/v1;//Mass rate of gas in Kg/min
W1 = W*M*(427/4500);
mprintf('\n (ii)Compressor work is %f hp',W1);
//end