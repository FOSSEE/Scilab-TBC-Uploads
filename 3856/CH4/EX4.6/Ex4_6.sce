//Calculate the Enthalpy Change for heating of 1.46 moles of Oxygen

//Example 4.6

clc;

clear;


n=1.46;   //Number of moles of Oxygen

function x=Cp(T) ,x=(25.7+0.0130*T), endfunction        //Molar Heat Capacity of Oxygen at Constant Pressure in J K^-1 mol^-1

function y=f(T),y=n*Cp(T),endfunction             

delH=intg(298,367,f);     //Enthalpy Change in J

printf("Enthalpy Change = %.2f*10^3 J",delH*10^-3)
