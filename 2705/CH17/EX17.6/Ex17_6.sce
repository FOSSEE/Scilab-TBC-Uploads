clear;
clc;
disp('Example 17.6');

// aim : To determine 
// (a) the break power of engine
// (b) the fuel consumption of the engine
// (c) the brake thermal efficiency of the engine

// given values
d = 850*10^-3;// bore , [m]
L = 2200*10^-3;// stroke, [m]
PMb = 15;// BMEP of cylinder, [bar]
N = 95/60;// speed of engine, [rev/s]
sfc = .2;// specific fuel oil consumption, [kg/kWh]
CV = 43000;// calorific value of the fuel oil, [kJ/kg]

// solution
// (a)
A = %pi*d^2/4;// area, [m^2]
bp = PMb*L*A*N*8/10;// brake power,[MW]
mprintf('\n (a) The brake power is  =  %f  MW\n',bp);

 // (b)
 FC = bp*sfc;// fuel consumption, [kg/h]
 mprintf('\n (b) The fuel consumption is  =  %f  tonne/h\n',FC);
 
 // (c)
 mf = FC/3600;// fuel used, [kg/s]
 n_the = bp/(mf*CV);// brake thermal efficiency
 mprintf('\n (c) The brake thermal efficiency is  =  %f  percent\n',n_the*100);
 
 // End
