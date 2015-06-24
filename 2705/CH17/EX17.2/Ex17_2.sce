clear;
clc;
disp('Example 17.2');

// aim : To determine
// (a) bp
// (b) ip
// (c) mechanical efficiency
// (d) indicated thermal efficiency
// (e) brake specific steam consumption
// (f) draw up complete energy account for the test one-minute basis taking 0 C as datum

// given values
d = 200*10^-3;// cylinder diameter, [mm]
L = 250*10^-3;// stroke, [mm]
N = 5;// speed, [rev/s]
r = .75/2;// effective radious of brake wheel, [m]
Ps = 800;// stop valve pressure, [kN/m^2]
x = .97;// dryness fraction of steam
BL = 136;// brake load, [kg]
SL = 90;// spring balance load, [N]
PM = 232;// mean effective pressure, [kN/m^2]
Pc = 10;// condenser pressure, [kN/m^2]
m_dot = 3.36;// steam consumption, [kg/min]
CC = 113;// condenser cooling water, [kg/min]
Tr = 11;// temperature rise of condenser cooling water, [K]
Tc = 38;// condensate temperature, [C]
C = 4.18;// heat capacity of water, [kJ/kg K]
g = 9.81;// gravitational acceleration, [m/s^2]

// solution
// from steam table
// at 800 kN/m^2
tf1 = 170.4;// saturation temperature, [C]
hf1 = 720.9;// [kJ/kg]
hfg1 = 2046.5;// [kJ/kg]
hg1 = 2767.5;// [kJ/kg]
vg1 = .2403;// [m^3/kg]

// at 10 kN/m^2
tf2 = 45.8;// saturation temperature, [C]
hf2 = 191.8;// [kJ/kg]
hfg2 = 2392.9;// [kJ/kg]
hg2 = 2584.8;// [kJ/kg]
vg2 = 14.67;// [m^3/kg]

// (a)
T = (BL*g-SL)*r;// torque, [Nm]
bp = 2*%pi*N*T*10^-3;// brake power,[W]
mprintf('\n (a) The brake power is  =   %f  kW\n',bp);

// (b)
A = %pi*d^2/4;// area, [m^2]
ip = PM*L*A*N*2;// double-acting so*2, [kW]
mprintf('\n (b) The indicated power is  =  %f kW\n',ip);

// (c)
n_mec = bp/ip;// mechanical efficiency
mprintf('\n (c) The mechanical efficiency is  =  %f  percent\n',n_mec*100);

// (d)
h = hf1+x*hfg1;// [kJ/kg]
hf = hf2;
ITE = ip/((m_dot/60)*(h-hf));// indicated thermal efficiency
mprintf('\n (d) The indicated thermal efficiency is  =  %f percent\n',ITE*100);
// (e)
Bsc=m_dot*60/bp;// brake specific steam consumption, [kg/kWh]
mprintf('\n (e) The brake steam consumption is  =  %f  kg/kWh\n',Bsc);

// (f)
// energy balanvce reckoned from 0 C
Es = m_dot*h;// energy supplied, [kJ]
Eb = bp*60;// energy to bp, [kJ]
Ecc = CC*C*Tr;// energy to condensate cooling water, [kJ]
Ec = m_dot*C*Tc;// energy to condensate, [kJ]
Ese = Es-Eb-Ecc-Ec;// energy to surrounding,etc, [kJ]

mprintf('\n (f) Energy supplied/min is  =  %f  kJ\n',Es);

mprintf('\n    Energy to bp/min is  =  %f  kJ\n',Eb);
mprintf('\n    Energy to condenser cooling water/min is  =  %f kJ\n',Ecc);
mprintf('\n    Energy to condensate/min is  =  %f kJ\n',Ec);
mprintf('\n    Energy to surrounding, etc/min is  =  %f  kJ\n',Ese);

// answer in the book is misprinted

//  End
