clear;
clc;
disp(' Example 19.4');

// aim : To determine
// (a) the volume of external saturated air
// (b) the mass of air
// (c) the heat transfer
// (d) the heat transfer required by the combind water vapour

// given values
Vb = 56000;// volume of building, [m^3]
T2 = 273+20;// temperature of air in thebuilding, [K]
phi = .6;// relative humidity
T1 = 8+273;// external air saturated temperature, [K]
p0 = 101.3;// atmospheric pressure, [kN/m^2]
cp = 2.093;// heat capacity of saturated steam, [kJ/kg K]
R = .287;// gas constant, [kJ/kg K]

// solution
// from steam table at 20 C saturation pressure of steam is,
pg = 2.34;// [kN/m^2]

// (a)
pvap = phi*pg;// partial pressure of vapor, [kN/m^2] 
P = p0-pvap;// partial pressure of air, [kN/m^2]
V = 2*Vb;// air required, [m^3]
// at 8 C saturation pressure ia
pvap = 1.072;// [kN/m^2]
P2 = p0-pvap;// partial pressure of entry at 8 C, [kN/m^2]

// using P1*V1/T1=P2*V2/T2;
V2 = P*V*T1/(T2*P2);// air required at 8 C, [m^3/h]
mprintf('\n (a) The volume of air required is  =  %f  m^3/h\n',V2);

// (b)
//  assuming
pg = 1.401;// pressure, [kN/m^2]
Tg = 273+12;// [K]
vg = 93.8;// [m^3/kg]
// at constant pressure
v = vg*T2/Tg;// volume[m^3/kg]
mv = V/v;// mass of vapor in building at 20 C, [kg/h]
// from steam table at 8 C
vg2 = 121;// [m^3/kg]
mve = V2/vg2;// mass of vapor supplied with saturated entry air, [kg/h]
mw = mv-mve;// mass of water added, [kg/h]
mprintf('\n (b) The mass of water added is  =  %f  kg/h\n ',mw);

// (c)
// for perfect gas
m = P2*V2/(R*T1);// [kg/h]
Cp = .287;// heat capacity, [kJ/kg K]
Q = m*Cp*(T2-T1);// heat transfer by dry air,[kJ/h]
mprintf('\n (c) The heat transfer required by dry air is  =  %f MJ/h\n',Q*10^-3);

// (d)
// from steam table
h1 = 2516.2;// specific enthalpy of saturated vapor at 8 C,[kJ/kg]
hs = 2523.6;// specific enthalpy of saturated vapor at 20 C, [kJ/kg]
h2 = hs+cp*(T2-T1);// specific enthalpy of vapor at 20 c, [kJ/kg]
Q1 = mve*(h2-h1);// heat transfer required for vapor, [kJ]

// again from steam table
hf1 = 33.6;// [kJ/kg]
hg3 = 2538.2;// [kJ/kg]
Q2 = mw*(hg3-hf1);// heat transfer required for water, [kJ/h]
Qt = Q1+Q2;// total heat transfer, [kJ/h]
mprintf('\n (d) The heat transferred required for vapor+supply water is  =  %f  MJ/h\n',Qt*10^-3);

//  there is minor variation in the answer reported in the book

//  End
