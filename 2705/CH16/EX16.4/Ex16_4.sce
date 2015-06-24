clear;
clc;
disp('Example 16.4');

// aim : To determine
// (a) the pressure and temperature as the air leaves the compressor turbine
// (b) the power output from the free power turbine
// (c) the thermal efficiency of the plant
// (d) the work ratio
// (e) the carnot efficiency within the cycle temperature limits

// Given values
T1 = 273+19;// temperature, [K]
P1 = 100;// pressure, [kN/m^2]
P2 = 8*P1; // [kN/m^2]
P3 = P2;// [kN/m^2]
T3 = 273+980;// temperature, [K]
n_com = .85;// efficiency of rotary compressor
P5 = 100;// [kN/m^2]
n_cum = .88;// isentropic efficiency of combustion chamber compressor, 
n_tur = .86;// isentropic efficiency of turbine
m_dot = 7;// mass flow rate of air, [kg/s]
Gama = 1.4;// heat capacity ratio
cp = 1.006;// [kJ/kg K]

// solution
// (a)
// For compressor
T2_prim = T1*(P2/P1)^((Gama-1)/Gama);// [K]

T2 = T1+(T2_prim-T1)/n_com;// temperature, [K]

// for compressor turbine
// T3-T4 = T2-T1,because compressor turbine power=compressor power so
T4 = T3-(T2-T1);//turbine exit temperature, [K]
T4_prim = T3-(T3-T4)/n_cum;// [K]

// For turbine
// T4_prim = T3*(P4/P3)^((Gama-1)/Gama)
P4 = P3*(T4_prim/T3)^(Gama/(Gama-1));// exit air pressure of air, [kN/m^2]

mprintf('\n (a) The temperature as the air leaves the compressor turbine is  =  %f  C\n',T4-273);
mprintf('\n      The pressure as the air leaves the compressor turbine is  =  %f  kN/m^2\n',P4);

// (b)
T5_prim = T4*(P5/P4)^((Gama-1)/Gama);// [K]


T5 = T4-n_tur*(T4-T5_prim);// temperature, [K]

PO = m_dot*cp*(T4-T5);// power output
mprintf('\n (b) The power output from the free power turbine is  =  %f kW\n',PO);

// (c)

n_the = (T4-T5)/(T3-T2)*100;// thermal effficiency 
mprintf('\n (c) The thermal efficiency of the plant is  =  %f percent\n',n_the);

// (d)

WR = (T4-T5)/(T3-T5);// work ratio
mprintf('\n (d) The work ratio is  =  %f\n',WR);

// (e)
CE = (T3-T1)/T3;// carnot efficiency
mprintf('\n (e) The carnot efficiency is  =  %f percent\n',CE*100);

//  End
