clear;
clc;
disp('Example 10');

// aim : To determine
// (a) the maximum temperature attained during the cycle
// (b) the thermal efficiency of the cycle

// given value
rva  =7.5;// volume ratio of adiabatic expansion
rvc  =15;// volume ratio of compression
P1 = 98;// initial pressure, [kn/m^2]
T1 = 273+44;// initial temperature, [K]
P4 = 258;// pressure at the end of the adiabatic expansion, [kN/m^2]
Gama = 1.4;//  heat capacity  ratio

// solution
// by seeing diagram
// for process 4-1, P4/T4=P1/T1
T4 = T1*(P4/P1);// [K]
// for process 3-4
T3 = T4*(rva)^(Gama-1);
mprintf('\n (a) The maximum temperature during the cycle is  =  %f  C\n',T3-273);

// (b)

// for process 1-2,
T2 = T1*(rvc)^(Gama-1);// [K]
n_the = 1-(T4-T1)/((Gama)*(T3-T2));// thermal efficiency
mprintf('\n (b) The thermal efficiency of the cycle is  =  %f percent\n',n_the*100);

//  End
