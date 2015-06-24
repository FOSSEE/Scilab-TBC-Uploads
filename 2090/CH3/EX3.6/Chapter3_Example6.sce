clc
clear
//Input data
t=25;//The temperature of both reactants and products in degree centigrade
p=1;//The pressure of both reactants and products in bar

//Calculations 
h=0;//Enthalpy of all elements at given temp and pressure 
hf1=-103.85;//The enthalpy of the compound C3H8 in the reactants side at given temp and pressure in MJ/kmol
hf2=-393.52;//The enthalpy of carbondioxide for the given temp and pressure in MJ/kmol
hf3=-285.8;//The enthalpy of the water for the given temp and pressure in MJ/kmol
hf4=[3*hf2]+[4*hf3];//Total enthalpy in the products side in MJ/kmol
Q=hf4-hf1;//The heat transfer per mole of fuel in MJ/kmol fuel

//Output
printf(' The heat transfer per mole of fuel = %3.2f kJ/mol fuel',Q)
