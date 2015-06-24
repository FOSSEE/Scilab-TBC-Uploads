clc
clear
//Page number 482
//Input data 
t=0;//The initial temperature of mercury in degree centigrade 
p=1;//The initial pressure of mercury in atmospheres 
Cp=28;//The specific heat at constant pressure in J/mol K 
V=1.47*10^-5;//The given specific volume in m^3/mol 
b=1.81*10^-6;//The given volume expansivity in K^-1
k=3.89*10^-11;//The given compressibility in pa^-1

//Calculations 
T=t+273;//The initial temperature of mercury in K 
Cv=Cp-((T*V*b^2)/k);//The specific heat at constant volume in J/mol K 
g=Cp/Cv;//The adiabatic index 

//Output 
printf('The adiabatic index is %3.0f ',g)
