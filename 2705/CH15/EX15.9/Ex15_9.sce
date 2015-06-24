clear;
clc;
disp('Example 15.9');

// aim : To determine
// (a) the pressure and temperature at cycle process change points
// (b) the work done 
// (c)  the thermal efficiency
// (d)  the work ratio
// (e)  the mean effective pressure
// (f)  the carnot efficiency


// given values
rv = 16;// volume ratio of compression
P1 = 90;// initial pressure , [kN/m^2]
T1 = 273+40;// initial temperature, [K]
T3 = 273+1400;// maximum temperature, [K]
cp = 1.004;// specific heat capacity at constant pressure, [kJ/kg K]
Gama = 1.4;// heat capacoty ratio

// solution
cv = cp/Gama;// specific heat capacity at constant volume, [kJ/kg K]
R = cp-cv;// gas constant, [kJ/kg K]
// for one kg of gas
V1 = R*T1/P1;// initial volume, [m^3]
// taking reference  Fig. 15.22
// (a)
// for process 1-2
// using PV^(Gama)=constant for process 1-2
// also rv = V1/V2
P2 = P1*(rv)^(Gama);// pressure at stage2,. [kN/m^2]
T2 = T1*(rv)^(Gama-1);// temperature at stage 2, [K]

// for process 2-3
P3 = P2;// pressure at stage 3, [kN/m^2]
V2 = V1/rv;//[m^3]
// since pressure is constant in process 2-3 , so using V/T=constant, so
V3 = V2*(T3/T2);// volume at stage 3, [m^3]

// for process 1-4
V4 = V1;// [m^3]
P4 = P3*(V3/V4)^(Gama)
// since in stage 1-4 volume is constant, so P/T=constant, 
T4 = T1*(P4/P1);// temperature at stage  4,[K]

mprintf('\n (a)  P1  =  %f kN/m^2,          t1  =  %f C,\n      P2  =  %f kN/m^2,        t2  =  %f C,\n      P3  =  %f kN/m^2,         t3  =  %f C,\n      P4  =  %f kN/m^2,          t4  =  %f C\n',P1,T1-273,P2,T2-273,P3,T3-273,P4,T4-273);

// (b)
W = cp*(T3-T2)-cv*(T4-T1);// work done, [kJ]
mprintf('\n (b) The work done is  =  %f kJ\n',W);

// (c) 
TE = 1-(T4-T1)/((T3-T2)*Gama);// thermal efficiency
mprintf('\n (c) The thermal efficiency is  =  %f percent\n',TE*100);

// (d)
PW = cp*(T3-T2)+R*(T3-T4)/(Gama-1);// positive work done
WR = W/PW;//  work ratio
mprintf('\n (d) The work ratio is  =  %f\n',WR);

// (e)
Pm = W/(V1-V2);// mean effective pressure, [kN/m^2]
mprintf('\n (e) The mean effefctive pressure is  =  %f kN/m^2\n',Pm);

// (f)
CE = (T3-T1)/T3;// carnot efficiency
mprintf('\n (f) The carnot efficiency is  =  %f percent\n',CE*100);

// value of t2 printed in the book is incorrect

// End
