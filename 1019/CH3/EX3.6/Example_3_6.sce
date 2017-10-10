//Example 3.6
clear;
clc;

//Given 
delHfCO2 = -393.5;//heat of formation in kJ of carbondioxide
delHfH2O = -285.8;//heat of formation in kJ of water
delHfC2H6 = -84.5;//heat of formation in kJ ethane
delHfO2 =  0;//heat of formation of oxygen

//To determine the enthalpy change for given reaction
delH = (2*delHfCO2)+(3*delHfH2O)-(delHfC2H6+(3.5*delHfO2));//enthalpy change in kJ
mprintf('enthalpy change for given reaction = %f kJ',delH);
//end