clear;
clc;
disp('Example 15.7');

// aim : To determine
// (a) the pressure, volume and temperature at each cycle process change points
// (b) the heat transferred to air
// (c) the heat rejected by the air
// (d) the ideal thermal efficiency
// (e) the work done 
// (f) the mean effective pressure

// given values
m = 1;// mass of air, [kg]
rv = 6;// volume ratio of adiabatic compression
P1 = 103;// initial pressure , [kN/m^2]
T1 = 273+100;// initial temperature, [K]
P3 = 3450;// maximum pressure, [kN/m^2]
Gama = 1.4;// heat capacity ratio
R = .287;// gas constant, [kJ/kg K]

// solution
// taking reference  Fig. 15.20
// (a)
// for point 1
V1 = m*R*T1/P1;// initial volume, [m^3]

// for point 2
V2 = V1/rv;// volume at point 2, [m^3] 
// using PV^(Gama)=constant for process 1-2
P2 = P1*(V1/V2)^(Gama);// pressure at point 2,. [kN/m^2]
T2 = T1*(V1/V2)^(Gama-1);// temperature at point 2,[K]

// for point 3
V3 = V2;// volume at point 3, [m^3]
// since volume is constant in process 2-3 , so using P/T=constant, so
T3 = T2*(P3/P2);// temperature at stage 3, [K]

// for point 4
V4 = V1;//  volume at point 4, [m^3]
P4 = P3*(V3/V4)^Gama;// pressure at point 4, [kN/m^2] 
// again  since volume is constant in process 4-1 , so using P/T=constant, so
T4 = T1*(P4/P1);// temperature at point 4, [K]

mprintf('\n (a)  P1  =  %f kN/m^2,    V1  =  %f m^3,       t1  =  %f C,\n      P2  =  %f kN/m^2,    V2  =  %f m^3,      t2  =  %f C,\n      P3  =  %f kN/m^2,    V3  =  %f m^3,       t3  =  %f C,\n      P4  =  %f kN/m^2,      V4  =  %f m^3,       t4  =  %f C\n',P1,V1,T1-273,P2,V2,T2-273,P3,V3,T3-273,P4,V4,T4-273);

//  (b)
cv = R/(Gama-1);//  specific heat capacity, [kJ/kg K]
Q23 = m*cv*(T3-T2);// heat transferred, [kJ]
mprintf('\n (b) The heat transferred to the air is  =  %f  kJ\n',Q23);

// (c) 
Q34 = m*cv*(T4-T1);// heat rejected by air, [kJ]
mprintf('\n (c) The heat rejected by the air is  =  %f  kJ\n',Q34);

// (d)
TE = 1-Q34/Q23;// ideal thermal efficiency
mprintf('\n (d) The ideal thermal efficiency is  =  %f percent\n',TE*100);

// (e)
W = Q23-Q34;// work done ,[kJ]
mprintf('\n (e) The work done  is  =  %f  kJ\n',W);

// (f)
Pm = W/(V1-V2);// mean effective pressure, [kN/m^2]
mprintf('\n (f)  The mean effefctive pressure is  =  %f kN/m^2\n',Pm);

//  End
