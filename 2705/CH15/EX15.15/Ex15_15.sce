clear;
clc;
disp('Example 15.15');

// aim : To determine
// (a) the net work done
// (b) the ideal thermal efficiency
// (c) the thermal efficiency if the process of generation is not included

// given values
P1 = 110;// initial pressure, [kN/m^2)
T1 = 273+30;// initial temperature, [K]
V1 = .05;// initial volume, [m^3]
V2 = .005;// volume, [m^3]
T3 = 273+700;// temperature, [m^3]
R = .289;// gas constant, [kJ/kg K]
cv = .718;// heat capacity, [kJ/kg K]

// solution
// (a)
m = P1*V1/(R*T1);// mass , [kg]
W = m*R*(T3-T1)*log(V1/V2);// work done, [kJ]
mprintf('\n (a) The net work done is  =  %f kJ\n',W);

// (b)
n_the = (T3-T1)/T3;// ideal thermal efficiency
mprintf('\n (b) The ideal thermal efficiency is  =  %f percent\n',n_the*100);

// (c)
V4 = V1;
V3 = V2;
T4 = T3;
T2 = T1;

Q_rej = m*cv*(T4-T1)+m*R*T1*log(V1/V2);// heat rejected
Q_rec = m*cv*(T3-T2)+m*R*T3*log(V4/V3);// heat received

n_th = (1-Q_rej/Q_rec);// thermal efficiency
mprintf('\n (c) the thermal efficiency if the process of regeneration is not included is  =  %f percent\n',n_th*100);

//  End
