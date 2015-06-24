//Chemical Engineering Thermodynamics
//Chapter 9
//Fluid Flow in Pipes and Nozzles
//Example 9.4
clear;
clc;

//Given
A1 = 0.1;//Inlet area in sq meter
u1 = 60;//inlet velocity in m/sec
v1 = 0.185;//inlet specific volume in cubic meter/Kg
H1 = 715;//inlet enthalpy in Kcal/Kg
H2 = 660;//exit enthalpy in Kcal/Kg
v2 = 0.495;//exit specific volume in cubic meter/Kg
g = 9.81

//To calculate the area at exit of nozzle and hence decide the type of the nozzle
//From the first law
u2 = ((u1^2)-(2*g*(H2-H1)*427))^(1/2);
W = (u1*A1)/v1;//Mass rate of gas in Kg/sec
A2 = (W*v2)/u2;//Area at exit of nozzle
if(A2 < A1)
    mprintf('The nozzle is convergent');
else
    mprintf('The nozzle is divergent');
end
//end