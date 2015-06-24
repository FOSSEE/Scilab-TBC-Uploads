clear;
clc;
disp('Example 15.2');

// aim : To determine
// (a) the volume ratios of the isothermal and adiabatic processes
// (b) the thermal efficiency of the cycle

// given values
T1 = 273+260;// temperature, [K]
T3 = 273+21;// temperature, [K]
er = 15;// expansion ratio
Gama = 1.4;// heat capacity ratio

// solution
// (a)
T2 = T1;
T4 = T3;
// for adiabatic process
rva = (T1/T4)^(1/(Gama-1));// volume ratio of adiabatic
rvi = er/rva;// volume ratio of isothermal
mprintf('\n (a) The volume ratio of the adiabatic process is  =  %f\n',rva);
mprintf('\n      The volume ratio of the isothermal process is  =  %f\n',rvi);

// (b)
n_the = (T1-T4)/T1*100;// thermal efficiency
mprintf('\n (b) The thermal efficiency of the cycle is  =  %f percent\n',n_the);

//  End
