//Example 8.15
clear;
clc;

//Given
T=298;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delGfoH2Ol=-237.2;//standard enthalpy of formation of water in kJ mol^-1
pH2O=23.7;//vapour pressure of water in mm Hg
P=760;//standard pressure in mm Hg

//To determine delGfoH2Og
Kp=pH2O/P;//equillibrium constant for given reaction
delGo=(-1)*R*T*log(Kp)/1000;//delGo in kJ mol^-1
delGfoH2Og=delGo+delGfoH2Ol;//free energy of formation of water vapour in kJ mol^-1
mprintf('Free energy of formation of water vapour,delGfoH2Og = %f kJ mol^-1',delGfoH2Og);
//end