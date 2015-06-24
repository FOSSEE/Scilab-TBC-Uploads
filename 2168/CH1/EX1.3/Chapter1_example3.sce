clc
clear
//Input data
Fc=220//Fuel consumption in gm/(b.h.p*hr)
CV=10600//Calorific value in kcal/kg

//Calculations
hf=(Fc/1000)*CV//Heat supplied in kcal/hr
O=632//Output in terms of kcal/hr
bn=(O/hf)*100//Brake thermal efficiency in percent

//Output
printf('Brake thermal efficiency is %3.1f percent',bn)
