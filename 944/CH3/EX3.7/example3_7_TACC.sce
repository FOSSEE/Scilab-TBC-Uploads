//example 3.7

clear;
clc;

disp("SO2 + 0.5O2 -> SO3");
//given:
U=-97030;//heat of reaction[J]
n=1-(1+0.5);//change in no. of moles 
R=8.314;//universal gas constant[J/K/mol]
T=298;//temperature during the reaction[K]


//to find the change in enthalpy of reaction(H)
H=U+n*R*T;//change in enthalpy of reaction[J]
printf("The change in enthalpy of reaction is %f J ",H);
