clear;
clc;
disp('Example 15.17');

// aim : To determine 
// (a) the net work done
// (b) thethermal efficiency

// given values
m = 1;// mass of air, [kg]
T1 = 273+230;// initial temperature, [K]
P1 = 3450;// initial pressure, [kN/m^2]
P2 = 2000;// pressure, [kN/m^2]
P3 = 140;// pressure, [kN/m^2]
P4 = P3;
Gama = 1.4; // heat capacity ratio
cp = 1.006;// heat capacity, [kJ/kg k]

// solution
T2 =T1;// isothermal process 1-2
// process 2-3 and 1-4 are adiabatic so
T3 = T2*(P3/P2)^((Gama-1)/Gama);// temperature, [K] 
T4 = T1*(P4/P1)^((Gama-1)/Gama);// [K]
R = cp*(Gama-1)/Gama;// gas constant, [kJ/kg K]
Q1 = m*R*T1*log(P1/P2);// heat received, [kJ]
Q2 = m*cp*(T3-T4);// heat rejected

//hence
W = Q1-Q2;// work done
mprintf('\n (a) The net work done is  =  %f kJ\n',W);

// (b)
TE = 1-Q2/Q1;// thermal efficiency
mprintf('\n (b) The thermal efficiency is  =  %f  percent\n',TE*100);

//  End
