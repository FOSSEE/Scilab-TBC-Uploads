//ex13
//Different Methods of Evaluating Gas Pressure
clear
clc
T=175//temp in K
v=0.00375//specific volume in m^3/kg
//(a)ideal gas equation of state
// data from table A-1
R=0.2968//gas constant for a given gas in kPa.m^3/kg.K 
P=R*T/v;//Pressure in kPa
printf('\n(a) Pressure from Ideal gas equation = %.0f kPa \n',P);
//(b)van der waals equation
//a and b are van der waals constant
a=0.175;//m^6.kPa/Kg^2
b=0.00138;//m^3/Kg
P=R*T/(v-b)-a/v^2;//pressure in kPa
printf('(b) Pressure from van der waals equation = %.0f kPa \n',P);
//(c)Beattie-Bridgeman equation
A=102.29//constant 
B=0.05378//constant
c=4.2*10^4;//constant
Ru=8.314;//universal gas constant value 
MM=28.013//molecular Mass of substance
v=0.00375//specific volume in Kg/m^3
V=MM*v//Volume in m^3

P=Ru*T/V^2*(1-c/(V*T^3))*(V+B)-A/V^2;//pressure in KPa
printf('(c) Pressure from Beattie-Bridgeman equation = %.0f kPa \n',P);

