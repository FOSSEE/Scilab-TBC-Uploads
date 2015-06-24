clear;
clc;
disp('Example 15.16');

// aim : To determine
// (a) the maximum temperature
// (b) the net work done
// (c) the ideal thermal efficiency
// (d) the thermal efficiency if the process of regeneration is not included

// given values
P1 = 100;// initial pressure, [kN/m^2)
T1 = 273+20;// initial temperature, [K]
V1 = .08;// initial volume, [m^3]
rv = 5;// volume ratio
R = .287;// gas constant, [kJ/kg K]
cp = 1.006;// heat capacity, [kJ/kg K]
V3_by_V2 = 2;

// solution
// (a)
// using Fig.15.33
// process 1-2 is isothermal
T2 = T1;
// since process 2-3 isisobaric, so V/T=constant
T3 = T2*(V3_by_V2);// maximumtemperature, [K]
mprintf('\n (a) The maximum temperature is  =  %f C\n',T3-273);

// (b)
m = P1*V1/(R*T1);// mass , [kg]
W = m*R*(T3-T1)*log(rv);// work done, [kJ]
mprintf('\n (b) The net work done is  =  %f  kJ\n',W);

// (c)
TE = (T3-T1)/T3;// ideal thermal efficiency
mprintf('\n (c) The ideal thermal efficiency is  =  %f  percent\n',TE*100);

// (d)
T4 = T3;
T2 = T1;

Q_rej = m*cp*(T4-T1)+m*R*T1*log(rv);// heat rejected
Q_rec = m*cp*(T3-T2)+m*R*T3*log(rv);// heat received

n_th = (1-Q_rej/Q_rec);// thermal efficiency
mprintf('\n (d) the thermal efficiency if the process of regeneration is not included is  =  %f  percent\n',n_th*100);

//  End
