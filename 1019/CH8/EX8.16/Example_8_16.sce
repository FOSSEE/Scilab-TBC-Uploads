//Example 8.16
clear;
clc;

//Given
T=298;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delGfoCuO=-127.2;//standard enthalpy of formation of CuO in kJ mol^-1
pH2O=23.7;//vapour pressure of water in mm Hg
P=760;//standard pressure in mm Hg

//To determine delGfoH2Og
Kp=pH2O/P;//equillibrium constant for given reaction
delGo=(-2)*delGfoCuO;//delGo in kJ mol^-1
k=(-1000*delGo)/(R*T);//k=log(Kp)
Kp=exp(k);//equillibrium constant Kp
pO2=Kp*1;//partial pressure of O2 in atm
mprintf('Partial pressure of O2 over CuO and Cu at 298 K = %f atm',pO2);
//end