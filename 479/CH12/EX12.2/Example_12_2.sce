//Chemical Engineering Thermodynamics
//Chapter 12
//Refrigeration

//Example 12.2
clear;
clc;

//Given
Ta = 298;//Initial temperature in K
Tb = 203;//Final temperature in k
T1 = 298;//Water temperature in K
n = 1;//Kgmole of CO2
//Cp = 5.89+0.0112T ; Specific heat of CO2 in Kcal/Kgmole K

//To Calculate the compressor load
//From equation 12.2a and b (page no 221)
function y = f(T)
    y = ((T1-T)/T)*n*(5.89+0.0112*T);
endfunction
W = intg(Ta,Tb,f);
mprintf('The compressor load is %f Kcal/Kgmole',W);
//end