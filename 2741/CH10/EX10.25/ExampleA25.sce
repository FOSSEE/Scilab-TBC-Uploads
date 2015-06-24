clc
clear
//Page number 481
//Input data 
T=300;//The temperature of the metallic copper disc in K 
Cp=24.5;//The specific heat at constant pressure in J/mol K 
a=50.4*10^-6;//The coefficient of thermal expansion in K^-1 
K=7.78*10^-12;//Isothermal compressibility in N/m^2 
V=7.06*10^-6;//The specific volume in m^3/mol 

//Calculations 
C=(T*V*a^2)/K;//The change in specific heats in J/mol K
Cv=Cp-C;//The specific heat at constant volume in J/mol K 

//Output 
printf('The specific heat at constant volume is Cv = %3.4f J/mol-K ',Cv)
