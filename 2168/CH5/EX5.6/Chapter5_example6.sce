clc
clear
//Input data
T=[500,2000]//Change in temperature in K
x=[11.515,-172,1530]//Cp=11.515-172/sqrt(T)+1530/T in kcal/kg mole.K
mO2=32//Molecular weight of oxygen

//Calculations
function y=f(T),y=(x(1)+(x(2)/sqrt(T))+(x(3)/T)),endfunction
I=-intg(T(2),T(1),f)//Integration
dh=(I/mO2)//Change in enthalpy in kcal/kg

//Output
printf('The change in enthalpy is %3.1f kcal/kg',dh)
