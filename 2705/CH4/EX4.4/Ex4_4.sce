clear;
clc;
disp('Example 4.4');

//  aim : To determine
//  the specific enthalpy of steam

//  Given values
P = 2.5;//  pressure, [MN/m^2]
t = 320; //  temperature, [C]

//  solution
//  from steam table at given condition the saturation temperature of steam is 223.9 C, therefore steam is superheated
tf = 223.9;//  [C]

//  first let's calculate estimated enthalpy
//  again from steam table 

hg = 2800.9;//  enthalpy at saturation temp, [kJ/kg]
cp =2.0934;//  specific heat capacity of steam,[kJ/kg K]

//  so enthalpy at given condition is
h = hg+cp*(t-tf);//  [kJ/kg]
mprintf('\n The estimated specific enthalpy is  =  %f kJ/kg \n',h);

//  calculation of accurate specific enthalpy
//  we need double interpolation for this

//  first interpolation w.r.t. to temperature
//  At 2 MN/m^2
Table_t_h = [[325,300];[3083,3025]];// where, t in [C] and h in [kJ/kg]
h1 = interpln(Table_t_h,320); //  [kJ/kg]

//  at 4 MN/m^2
Table_t_h = [[325,300];[3031,2962]]; //  t in [C] and h in [kJ/kg]
h2 = interpln(Table_t_h,320); //  [kJ/kg]

//  now interpolation w.r.t. pressure
Table_P_h = [[4,2];[h2,h1]]; //  where P in NM/m^2 and h1,h2 in kJ/kg
h = interpln(Table_P_h,2.5);//  [kJ/kg]
mprintf('\n The accurate specific enthalpy of steam at pressure of 2.5 MN/m^2 and with a temperature 320 C is  =   %f kJ/kg \n',h);

//  End
