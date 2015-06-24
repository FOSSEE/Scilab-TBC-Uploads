clear;
clc;
disp('Example 16.5');

// aim : To determine
// (a) the pressure and temperature of the air compression 
// (b) the power developed by the gas turbine
// (c) the temperature and pressure of the airentering the exhaust jet as it leaves the gas turbine 

// Given values
T1 = 273-22.4;// temperature, [K]
P1 = 470;// pressure, [bar]
P2 = 30*P1; // [kN/m^2]
P3 = P2;// [kN/m^2]
T3 = 273+960;// temperature, [K]
r = 1.25;// ratio of turbine power to compressor power
n_tur = .86;// isentropic efficiency of turbine
m_dot = 80;// mass flow rate of air, [kg/s]
Gama = 1.41;// heat capacity ratio
cp = 1.05;// [kJ/kg K]

// solution
// (a)
// For compressor
T2_prim = T1*(P2/P1)^((Gama-1)/Gama);// [K]
// using n_tur=(T2_prim-T1)/(T2-T1)
T2 = T1+(T2_prim-T1)/n_tur;// temperature, [K]

mprintf('\n (a) The pressure of the air after compression is  =  %f  bar\n',P2);

mprintf('\n      The temperature of the air after compression is  =  %f  C\n',T2-273);

// (b)
Td  = r*(T2-T1);// temperature drop in turbine, [K]
PO = m_dot*cp*Td;// power output, [kW]
mprintf('\n (b) The power developed by the gas turbine is  =  %f  MW\n',PO*10^-3);

// (c)
t3 = T3-273;// [C]
t4 = t3-Td;// temeprerature of air leaving turbine,[K]
Tdi = Td/n_tur;// isentropic temperature drop, [K]
T4_prim = t3-Tdi+273;// temperature, [K]
// using T4_prim=T3*(P4/P3)^((Gama-1)/Gama)
P4 = P3*(T4_prim/T3)^(Gama/(Gama-1));// exit air pressure of air, [kN/m^2]

mprintf('\n (c) The air pressure as it leaves the gas turbine is  =  %f  bar\n',P4);

// Result in the book is not matching because they have taken pressure in mbar  but in in question it is given in bar 

//   End

