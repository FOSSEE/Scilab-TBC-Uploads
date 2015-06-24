
clc
clear
//Input data
//Cv=0.125+0.000005T where Cv is Specific heat at constant volume and T is the temperature in K
R=28.9//Characteristic gas constant in mkg/kg/degree C
T=[100+273,50+273]//Temperature in K
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
function y=f(x),y=0.125+(0.00005*x),endfunction
I=J*intg(303,373,f)

//Output
printf('The work done is %i m.kg/kg of gas',I)
