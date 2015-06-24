clear;
clc;
disp('Example 8.14');

// aim : To determine 
// (a) the mass of fuel used per cycle
// (b) the actual mass of air taken in per cycle
// (c) the volume of air taken in per cycle

// given values
W = 15;// work done, [kJ/s]
N = 5;// speed, [rev/s]
C = .84;// mass composition of carbon
H = .16;// mass composition of hydrogen
ea = 1;// percentage excess air supplied 
CV = 45000;// calorificvalue of fuel, [kJ/kg]
n_the = .3;// thermal efficiency
P = 100;// pressuer, [kN/m^2]
T = 273+15;// temperature, [K]
R = .29;// gas constant, [kJ/kg K]

// solution
// (a)
E = W*2/N/n_the;// energy supplied, [kJ/cycle]
mf = E/CV;// mass of fuell used, [kg]
mprintf('\n (a) Mass of fuel used per cycle is  =  %f g\n',mf*10^3);

// (b)
// basis 1 kg fuel
mO2 = C*8/3+8*H;// mass of O2 requirea, [kg]
smO2 = mO2/.23;// stoichiometric mass of air, [kg]
ma = smO2*(1+ea);// actual mass of air supplied, [kg]
m = ma*mf;// mass of air supplied, [kg/cycle]
mprintf('\n (b) The mass of air supplied per cycle is  =  %f  kg\n',m);

// (c)
V = m*R*T/P;// volume of air, [m^3]
mprintf('\n (c) The volume of air taken in per cycle is  =  %f  m^3\n',V);

// End
