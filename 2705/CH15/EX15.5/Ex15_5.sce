clear;
clc;
disp('Example 15.5');

// aim : To determine
// (a) the actual thermal efficiency of the turbine
// (b) the specific fuel consumption of the turbine in kg/kWh

// given values
P2_by_P1 = 8;
n_tur = .6;// ideal turbine thermal efficiency
c = 43*10^3;// calorific value of fuel, [kJ/kg]
Gama = 1.4;// heat capacity ratio

// solution
// (a)
rv = P2_by_P1;
n_tur_ide = 1-1/(P2_by_P1)^((Gama-1)/Gama);// ideal thermal efficiency
ate = n_tur_ide*n_tur;// actual thermal efficiency
mprintf('\n (a) The actual thermal efficiency of the turbine is  =  %f percent\n',ate*100);

// (b)
ewf = c*ate;// energy to work fuel, [kJ/kg]
kWh = 3600;// energy equivalent ,[kJ]
sfc = kWh/ewf;// specific fuel consumption, [kg/kWh]
mprintf('\n (b) The specific fuel consumption of the turbine is  =  %f  kg/kWh',sfc);

//  End
