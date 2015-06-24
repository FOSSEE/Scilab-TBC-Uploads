clear;
clc;
disp('Example 15.4');

// aim : To determine
// (a) the pressure, volume and temperature at cycle state points
// (b) the heat received
// (c) the work done 
// (d) the thermal efficiency
// (e) the carnot efficiency
// (f) the work ration
// (g) the mean effective pressure

// given values
ro = 8;// overall volume ratio;
rv = 6;// volume ratio of adiabatic compression
P1 = 100;// initial pressure , [kN/m^2]
V1 = .084;// initial volume, [m^3]
T1 = 273+28;// initial temperature, [K]
Gama = 1.4;// heat capacity ratio
cp = 1.006;// specific heat capacity, [kJ/kg K]

// solution
// taking reference  Fig. 15.18
// (a)
V2 = V1/rv;// volume at stage2, [m^3] 
V4 = ro*V2;// volume at stage 4;[m^3]
// using PV^(Gama)=constant for process 1-2
P2 = P1*(V1/V2)^(Gama);// pressure at stage2,. [kN/m^2]
T2 = T1*(V1/V2)^(Gama-1);// [K]

P3 = P2;// pressure at stage 3, [kN/m^2]
V3 = V4/rv;// volume at stage 3, [m^3]
// since pressure is constant in process 2-3 , so using V/T=constant, so
T3 = T2*(V3/V2);// temperature at stage 3, [K]

// for process 1-4
T4 = T1*(V4/V1);// temperature at stage4, [K
P4 = P1;// pressure at stage4, [kN/m^2]

mprintf('\n (a)  P1  =  %f kN/m^2,    V1  =  %f m^3,       t1  =  %f C,\n      P2  =    %f kN/m^2,    V2  =  %f m^3,      t2  =  %f C,\n      P3  =  %f kN/m^2,    V3  =  %f m^3,       t3  =  %f C,\n      P4  =  %f kN/m^2,      V4  =  %f m^3,       t4  =  %f C\n',P1,V1,T1-273,P2,V2,T2-273,P3,V3,T3-273,P4,V4,T4-273);

// (b)
R = cp*(Gama-1)/Gama;// gas constant, [kJ/kg K]
m = P1*V1/(R*T1);// mass of gas, [kg]
Q = m*cp*(T3-T2);// heat received, [kJ]
mprintf('\n (b) The heat received is  =  %f kJ\n',Q);

// (c) 
W = P2*(V3-V2)-P1*(V4-V1)+((P3*V3-P4*V4)-(P2*V2-P1*V1))/(Gama-1);// work done, [kJ]
mprintf('\n (c) The work done is  =  %f  kJ\n',W);

//  (d)
TE = 1-T1/T2;// thermal efficiency
mprintf('\n (d) The thermal efficiency is  =  %f  percent\n',TE*100);

// (e)
CE = (T3-T1)/T3;// carnot efficiency
mprintf('\n (e) The carnot efficiency is  =  %f  percent\n',CE*100);

// (f)
PW = P2*(V3-V2)+(P3*V3-P4*V4)/(Gama-1);// positive work done, [kj]
WR = W/PW;//  work ratio
mprintf('\n (f) The work ratio is  =  %f\n',WR);

// (g)
Pm = W/(V4-V2);// mean effective pressure, [kN/m^2]
mprintf('\n (g) The mean effective pressure is  =  %f  kN/m^2\n',Pm);

//  there is minor variation in answer reported in the book

//  End
