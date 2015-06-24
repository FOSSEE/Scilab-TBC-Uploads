clear;
clc;
disp('Example 4.1');

//  aim : To determine
//  the enthalpy

//  Given values
P = .50;// Pressure, [MN/m^2]

//  solution

//  From steam tables, at given pressure
hf = 640.1;//  specific liquid enthalpy ,[kJ/kg]
hfg = 2107.4;//  specific enthalpy of evaporation ,[kJ/kg]
hg = 2747.5; //  specific enthalpy of dry saturated steam ,[kJ/kg]
tf = 151.8; //  saturation temperature,[C]

mprintf('\n The specific liquid enthalpy is  =  %f kJ/kg \n',hf);
mprintf('\n The specific enthalpy of evaporation is  =  %f  kJ/kg \n',hfg);
mprintf('\n The specific enthalpy of dry saturated steam is  =  %f kJ/kg \n',hg);

//  End
