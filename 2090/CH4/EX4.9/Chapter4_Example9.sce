clc
clear
//Input data
T=500;//The given temperature in K
e=1;//Equivalence ratio 

//Calculations 
Ai=0.0662;//The amount of isooctane for 1 kg of air in kg
Ta=298;//Consider the ambient temperature in K 
E=[[0.0662*[(0.44*log(T/Ta))+(3.67*10^-3*(T-Ta))]]+[(0.921*log(T/Ta))+(2.31*10^-4*(T-Ta))]]*1000;//Isentropic compression function in J/kg air 
R=8.314;//Gas constant in kJ/kgK
Ri=R/114;//Gas constant for isooctane in kJ/kgK
W=[0.5874-(0.662*Ri*log(T/Ta))-(0.287*log(T/Ta))]*1000;//Gas constant for isooctane in kJ/kgK

//Output
printf('The isentropic compression functions at 500 K for the unburned, \n isooctsne-air mixture are %3.1f J/kg air and %3.1f J/kg air ',E,W)
