clear;
clc;
disp('Example 15.13');

// aim : To determine
// (a) the pressure, volume and temperature at cycle process change points
// (b) the net work done 
// (c)  the thermal efficiency
// (d) the heat received
// (e)  the work ratio
// (f)  the mean effective pressure
// (g)  the carnot efficiency


// given values
rv = 15;// volume ratio
P1 = 97*10^-3;// initial pressure , [MN/m^2]
V1 = .084;// initial volume, [m^3]
T1 = 273+28;// initial temperature, [K]
T4 = 273+1320;// maximum temperature, [K]
P3 = 6.2;// maximum pressure, [MN/m^2]
cp = 1.005;// specific heat capacity at constant pressure, [kJ/kg K]
cv = .717;// specific heat capacity at constant volume, [kJ/kg K]

// solution
// taking reference  Fig. 15.27
// (a)
R = cp-cv;// gas constant, [kJ/kg K]
Gama = cp/cv;// heat capacity ratio
// for process 1-2
V2 = V1/rv;// volume at stage2, [m^3] 
// using PV^(Gama)=constant for process 1-2
P2 = P1*(V1/V2)^(Gama);// pressure at stage2,. [MN/m^2]
T2 = T1*(V1/V2)^(Gama-1);// temperature at stage 2, [K]

// for process 2-3
// since volumee is constant in process 2-3 , so using P/T=constant, so
T3 = T2*(P3/P2);// volume at stage 3, [K]
V3 = V2;// volume at stage 3, [MN/m^2]

// for process 3-4
P4 = P3;// pressure at stage 4, [m^3]
// since in stage 3-4 P is constant, so V/T=constant, 
V4 = V3*(T4/T3);// temperature at stage  4,[K]

// for process 4-5
V5 = V1;// volume at stage 5, [m^3]
P5 = P4*(V4/V5)^(Gama);// pressure at stage5,. [MN/m^2]
T5 = T4*(V4/V5)^(Gama-1);// temperature at stage 5, [K]

mprintf('\n (a)  P1  =  %f kN/m^2,    V1  =  %f m^3,       t1  =  %f C,\n      P2  =  %f MN/m^2,    V2  =  %f m^3,        t2  =  %f C,\n      P3  =  %f MN/m^2,    V3  =  %f m^3,         t3  =  %f C,\n      P4  =  %f MN/m^2,      V4  =  %f m^3,       t4  =  %f C,\n      P5  =   %fkN/m^2,    V5  =  %fm^3,        t5  =  %fC\n',P1*10^3,V1,T1-273,P2,V2,T2-273,P3,V3,T3-273,P4,V4,T4-273,P5*10^3,V5,T5-273);


// (b)
W = (P3*(V4-V3)+((P4*V4-P5*V5)-(P2*V2-P1*V1))/(Gama-1))*10^3;// work done, [kJ]
mprintf('\n (b) The net work done is  =  %f kJ\n',W);

// (c) 
TE = 1-(T5-T1)/((T3-T2)+Gama*(T4-T3));// thermal efficiency
mprintf('\n (c) The thermal efficiency is  =  %f percent\n',TE*100);

// (d)
Q = W/TE;// heat received, [kJ]
mprintf('\n (d) The heat received is  =  %f kJ\n',Q);

// (e)
PW = P3*(V4-V3)+(P4*V4-P5*V5)/(Gama-1)
WR = W*10^-3/PW;//  work ratio
mprintf('\n (f) The work ratio is  =  %f\n',WR);

// (e)
Pm = W/(V1-V2);// mean effective pressure, [kN/m^2]
mprintf('\n (e) The mean effective pressure is  =  %f kN/m^2\n',Pm);

// (f)
CE = (T4-T1)/T4;// carnot efficiency
mprintf('\n (f) The carnot efficiency is  =  %f percent\n',CE*100);

//  End
