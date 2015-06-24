clear;
clc;
disp('Example 11.3');

//  aim : To determine
//  (a) the diagram factor
//  (b) the indicated thermal efficiency of the engine

// given values
d = 250*10^-3;// cylinder diameter, [m]
L = 375*10^-3;// length of stroke, [m]
P = 1000;// steam pressure , [kPa]
x = .96;// dryness fraction of steam
Pb = 55;// exhaust pressure, [kPa]
r = 6;// expansion ratio
ip = 45;// indicated power developed, [kW]
N = 3.5;// speed of engine, [rev/s]
m = 460;// steam consumption, [kg/h]

// solution
// (a)
Pm = P/r*(1+log(r))-Pb;// [kN/m^3]
A = %pi*(d)^2/4;// area, [m^2]
tip = Pm*L*A*N*2;// theoretical indicated power, [kW]
k = ip/tip;// diagram factor
mprintf('\n (a) The diagram factor is  =  %f\n',k);

// (b)
// from steam table at 1 MN/m^2
hf = 762.6;// [kJ/kg]
hfg = 2013.6;// [kJ/kg]
// so 
h1 = hf+x*hfg;// specific enthalpy of steam at 1MN/m^2, [kJ/kg]
// minimum specific enthalpy in engine at 55 kPa 
hf = 350.6;// [kJ/kg]
// maximum energy available in engine is
h = h1-hf;// [kJ/kg]
ITE = ip/(m*h/3600)*100;// indicated thermal efficiency
mprintf('\n (b) The indicated thermal efficiency is  =  %f  percent\n ',ITE);

//  End
