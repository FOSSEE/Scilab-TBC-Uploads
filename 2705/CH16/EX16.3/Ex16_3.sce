clc;
disp('Example 16.3');

// aim : To determine
// (a) the net power output of the plant
// (b) the exhaust temperature from the heat exchanger
// (c) the thermal efficiency of the plant
// (d) the thermal efficiency of the plant if there were no heat exchanger
// (e) the work ratio

// Given values
T1 = 273+15;// temperature, [K]
P1 = 101;// pressure, [kN/m^2]
P2 = 6*P1; // [kN/m^2]
eff = .65;// effectiveness of the heat exchanger, 
T3 = 273+870;// temperature, [K]
P4 = 101;// [kN/m^2]
n_com = .85;// efficiency of compressor, 
n_tur = .80;// efficiency of turbine
m_dot = 4;// mass flow rate, [kg/s]
Gama = 1.4;// heat capacity ratio
cp = 1.005;// [kJ/kg K]

// solution
// (a)
// For compressor
T2_prim = T1*(P2/P1)^((Gama-1)/Gama);// [K]

// using n_com = (T2_prim-T1)/(T2-T1)')

T2 = T1+(T2_prim-T1)/n_com
// For turbine
P3 = P2;
T4_prim = T3*(P4/P3)^((Gama-1)/Gama);// [K]

T4=T3-n_tur*(T3-T4_prim); //  [K]
P_out = m_dot*cp*((T3-T4)-(T2-T1));//  net power output, [kW]
mprintf('\n (a) The net power output of the plant is  =  %f kW\n',P_out);

// (b)
mtd = T4-T2;// maximum temperature drop for heat transfer, [K]
atd = eff*mtd;// actual temperature, [K]
et = T4-atd;// Exhaust temperature from heat exchanger, [K]
t6 = et-273;// [C]
mprintf('\n (b) The exhaust temperature from the heat exchanger is  =  %f C\n',t6);

// (c)
T5 = T2+atd;// [K]
n_the = ((T3-T4)-(T2-T1))/(T3-T5)*100;// thermal effficiency 
mprintf('\n (c) The thermal efficiency of the plant is  =  %f percent\n',n_the);

// (d)
// with no heat exchanger
n_the = ((T3-T4)-(T2-T1))/(T3-T2)*100;// thermal efficiency without heat exchanger
mprintf('\n (d) The thermal efficiency of the plant if there wereno heat exchanger is  =  %f  percent\n',n_the);

// (e)
P_pos = m_dot*cp*(T3-T4);// positive cycle work;// [kW]
w_rat = P_out/P_pos;// work ratio
mprintf('\n (e) The work ratio is  =  %f\n',w_rat)

//  End
