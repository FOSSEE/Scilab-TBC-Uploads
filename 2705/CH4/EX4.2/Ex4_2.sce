clear;
clc;
disp('Example 4.2');

//  aim : To determine 
//  saturation temperature and enthalpy

//  Given values
P = 2.04;// pressure, [MN/m^2]

//  solution
//  since in the steam table values of enthalpy and saturation temperature at 2 and 2.1 MN?m^2 are   given, so for knowing required values at given pressure,there is need to do interpolation

//  calculation of saturation temperature
//  from steam table
Table_P_tf = [[2.1,2.0];[214.9,212.4]]; //  P in [MN/m^2] and tf in [C]
// using interpolation
tf = interpln(Table_P_tf,2.04);//  saturation temperature at given condition
mprintf('\n The Saturation temperature is  =  %f C \n',tf);

// calculation of specific liquid enthalpy
//  from steam table
Table_P_hf = [[2.1,2.0];[920.0,908.6]];//  P in [MN/m^2] and hf in [kJ/kg]
// using interpolation
hf = interpln(Table_P_hf,2.04); //  enthalpy at given condition, [kJ/kg]
mprintf('\n The Specific liquid enthalpy is  =  %f kJ/kg \n',hf);

// calculation of specific enthalpy of evaporation
//  from steam table
Table_P_hfg = [[2.1,2.0];[1878.2,1888.6]];//  P in [MN/m^2] and hfg in [kJ/kg]
// using interpolation
hfg = interpln(Table_P_hfg,2.04); //  enthalpy at given condition, [kJ/kg]
mprintf('\n The Specific enthalpy of evaporation is  =  %f kJ/kg \n',hfg);

//  calculation of specific enthalpy of dry saturated steam
//  from steam table
Table_P_hg = [[2.1,2.0];[2798.2,2797.2]];//P in [MN/m^2] and hg in [kJ/kg]
// using interpolation
hg = interpln(Table_P_hg,2.04); //  enthalpy at given condition, [kJ/kg]
mprintf('\n The Specific enthalpy of dry saturated steam is  =  %f kJ/kg \n',hg);

//  End
