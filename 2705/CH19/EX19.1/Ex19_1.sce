clear;
clc;
disp('Example 19.1');

// aim : To compare the moisture content and the true specific volumes of  atmosphere air 
// (a) temperature is 12 C and the air is saturaded
// (b) temperature is 31 C and air is .75 saturated

// Given values
P_atm = 101.4;// atmospheric pressure, [kN/m^2]
R = .287;// [kJ/kg K]

// solution
// (a)
T = 273+12;// air temperature, [K]
// From steam table at 12 C
p = 1.4;// [kN/m^2]
vg = 93.9;// [m^3/kg]
pa = P_atm-p;// partial pressure of the dry air, [kN/m^2]
va = R*T/pa;// [m^3/kg]

mw = va/vg;// mass of water vapor in the air,[kg]
v = va/(1+mw);// specific volume of humid air, [m^3/kg]

mprintf('\n (a) The mass of water vapor in the humid air is  =  %f  kg\n',mw);
mprintf('\n      The specific volume of humid air is  =  %f m^3/kg\n',v);

// (b)
x = .75;// dryness fraction
T = 273+31;// air temperature, [K]
// From steam table
p = 4.5;// [kN/m^2]
vg = 31.1;// [m^3/kg]
pa = P_atm-p;// [kN/m^2]
va = R*T/pa;// [m^3/kg]
mw1= va/vg;// mass of water vapor in the air, [kg]
mw_actual = mw1*x;// actual mass of vapor, [kg]
v = va/(1+mw_actual);// true specific volume of humid air,[m^3/kg] 

mprintf('\n (b) The mass of water vapor in the humid air is  =  %f  kg\n',mw1);
mprintf('\n     The specific volume of humid air is  =  %f  m^3/kg\n',v);

ewv = mw_actual/mw ;
mprintf('\n On the warm day the air conteains %f  times the mass of water vapor as on the cool day \n',ewv);

//  End
