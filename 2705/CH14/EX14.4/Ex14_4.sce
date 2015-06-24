clear;
clc;
disp(' Example 14.4');

// aim : To determine 
// (a) the final pressure and temperature
// (b) the energy required to drive the compressor

// given values
rv = 5;// pressure compression ratio
m_dot = 10;// air flow rate, [kg/s]
P1 = 100;// initial pressure, [kN/m^2]
T1 = 273+20;// initial temperature, [K]
n_com = .85;// isentropic efficiency of compressor
Gama = 1.4;// heat capacity ratio
cp = 1.005;// specific heat capacity, [kJ/kg K]

// solution
// (a)
T2_prim = T1*(rv)^((Gama-1)/Gama);// temperature after compression, [K]
// using isentropic efficiency=(T2_prim-T1)/(T2-T1)
T2 = T1+(T2_prim-T1)/n_com;//  final temperature, [K]
P2 = rv*P1;// final pressure, [kN/m^2]
mprintf('\n (a) The final temperature is  =  %f  C\n',T2-273);
mprintf('\n (b) The final pressure is  =  %f  kN/m^2\n',P2);

// (b)
E = m_dot*cp*(T1-T2);// energy required, [kW]
mprintf('\n (b) The energy required to drive the compressor is  =  %f  kW',E);
if(E<0)
    disp('The negative sign indicates energy input');
else
    disp('The positive sign indicates energy output');
end

 //  End


