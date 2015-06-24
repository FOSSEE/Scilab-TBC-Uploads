clear;
clc;
disp('Example 15.8');

// aim : To determine
// (a) the pressure, volume and temperature at cycle state points
// (b) the thermal efficiency
// (c) the theoretical output
// (d) the mean effective pressure
// (e) the carnot efficiency

// given values
rv = 9;// volume ratio
P1 = 101;// initial pressure , [kN/m^2]
V1 = .003;// initial volume, [m^3]
T1 = 273+18;// initial temperature, [K]
P3 = 4500;// maximum pressure, [kN/m^2]
N = 3000;
cp = 1.006;// specific heat capacity at constant pressure, [kJ/kg K]
cv = .716;// specific heat capacity at constant volume, [kJ/kg K]

// solution
// taking reference  Fig. 15.20
// (a)
// for process 1-2
Gama = cp/cv;// heat capacity ratio
R = cp-cv;// gas constant, [kJ/kg K]
V2 = V1/rv;// volume at stage2, [m^3] 
// using PV^(Gama)=constant for process 1-2
P2 = P1*(V1/V2)^(Gama);// pressure at stage2,. [kN/m^2]
T2 = T1*(V1/V2)^(Gama-1);// [K]

// for process 2-3
V3 = V2;// volume at stage 3, [m^3]
// since volume is constant in process 2-3 , so using P/T=constant, so
T3 = T2*(P3/P2);// temperature at stage 3, [K]

// for process 3-4
V4 = V1;// volume at stage 4
// using PV^(Gama)=constant for process 3-4
P4 = P3*(V3/V4)^(Gama);// pressure at stage2,. [kN/m^2]
T4 = T3*(V3/V4)^(Gama-1);// temperature at stage  4,[K]

mprintf('\n (a)  P1  =  %f kN/m^2,    V1  =  %f m^3,       t1  =  %f C,\n      P2  =  %f kN/m^2,    V2  =  %f m^3,      t2  =  %f C,\n      P3  =  %f kN/m^2,    V3  =  %f m^3,       t3  =  %f C,\n      P4 =  %f kN/m^2,      V4  =  %f m^3,       t4  =  %f C\n',P1,V1,T1-273,P2,V2,T2-273,P3,V3,T3-273,P4,V4,T4-273);

// (b)
TE = 1-(T4-T1)/(T3-T2);// thermal efficiency
mprintf('\n (b) The thermal efficiency is  =  %f percent\n',TE*100);

// (c)
m = P1*V1/(R*T1);// mass os gas, [kg] 
W = m*cv*((T3-T2)-(T4-T1));// work done, [kJ]
Wt = W*N/60;// workdone per minute, [kW]
mprintf('\n (c) The theoretical output  is  =  %f  kW\n',Wt);

// (d)
Pm = W/(V1-V2);// mean effective pressure, [kN/m^2]
mprintf('\n (g) The mean effefctive pressure is  =  %f  kN/m^2\n',Pm);

// (e)
CE = (T3-T1)/T3;// carnot efficiency
mprintf('\n (e) The carnot efficiency is  =  %f percent\n',CE*100);


//  End
