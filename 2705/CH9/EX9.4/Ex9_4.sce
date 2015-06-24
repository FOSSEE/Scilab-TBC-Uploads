clear;
clc;
disp('Example 9.4');

// aim : To determine 
//  the energy emetted from the surface

//  Given values
h = 3;// height of surface, [m]
b = 4;// width of surface, [m]
epsilon_s = .9;// emissivity of the surface
T = 273+600;// surface temperature ,[K]
sigma = 5.67*10^-8;// [W/m^2/K^4]

//  solution
As = h*b;// area of the surface, [m^2]

Q_dot = epsilon_s*sigma*As*T^4*10^-3;// energy emitted, [kW]

mprintf('\n The energy emitted from the surface is  =  %f  kW\n',Q_dot);

//  End
