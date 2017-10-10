//Example 3.23
clear;
clc;

//Given
delHfH2O=-286;//enthalpy of formation of liquid water in kJ mol^-1
delHfCO2=-394;//enthalpy of formation of carbon dioxide in kJ mol^-1
delHfC6H12O6=-1260;//enthalpy of formation of glucose in water in kJ mol^-1

//To determine power output of the brain
delH=(6*delHfH2O)+(6*delHfCO2)-(delHfC6H12O6);//heat of combustion in kJ
q=delH/18;//heat supplied by 10 g glucose in kJ
p=-(1000*q)/3600;//power in Watt
mprintf('Power output of the brain = %f W',p);
//end