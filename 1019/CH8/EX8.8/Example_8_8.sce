//Example 8.8
clear;
clc;

//Given
T=298;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delGfoC2H4=68.12;//standard free energy change in the formation of ethylene in kJ mol^-1
delGfoC2H6=-32.89;//standard free energy change in the formation of ethane in kJ mol^-1

//To determine the value of delGo i.e. heat of hydrogenation of ethylene
delGo=delGfoC2H6-delGfoC2H4;//heat of hydrogenation of ethylene in kJ mol^-1
mprintf('Heat of hydrogenation of ethylene,delGo = %f kJ mol^-1',delGo);
//end