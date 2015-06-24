clear;
clc;
disp(' Example 14.8');

// aim : To determine 
//  the total temperature and pressure of the mixture

// given values
rp = 2.5;// static pressure ratio
FC = .04;// fuel consumption rate, [kg/min]
P1 = 60;// inilet pressure, [kN/m^2]
T1 = 273+5;// inilet temperature, [K]
n_com = .84;// isentropic efficiency of compressor
Gama = 1.39;// heat capacity ratio
C2 = 120;//exit velocity from compressor, [m/s]
rm = 13;// air-fuel ratio
cp = 1.005;// heat capacity ratio

// solution
P2 = rp*P1;// given condition, [kN/m^2]
T2_prim = T1*(P2/P1)^((Gama-1)/Gama);// temperature after compression, [K]
// using isentropic efficiency=(T2_prim-T1)/(T2-T1)
T2 = T1+(T2_prim-T1)/n_com;//  final temperature, [K]
m_dot = FC*(rm+1);// mass of air-fuel mixture, [kg/s]
P = m_dot*cp*(T2-T1);// power to drive compressor, [kW]
mprintf('\n The power required to drive compressor is  =  %f  kW\n',P);

Tt2 = T2+C2^2/(2*cp*10^3);// total temperature,[K]
Pt2 = P2*(Tt2/T2)^(Gama/(Gama-1));// total pressure, [kN/m^2]
mprintf('\n The temperature in the engine is  =  %f  C\n',Tt2-273);
mprintf('\n The pressure in the engine cylinder is  =  %f  kN/m^2\n',Pt2);

//  There is calculation mistake in the book


//  End
