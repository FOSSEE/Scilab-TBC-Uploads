clear;
clc;
disp('Example 15.14');

// aim : To determine
// (a)  the thermal efficiency
// (b)  the heat received
// (c) the heat rejected
// (d) the net work 
// (e)  the work ratio
// (f)  the mean effective pressure
// (g)  the carnot efficiency


// given values
P1 = 101;// initial pressure , [kN/m^2]
V1 = 14*10^-3;// initial volume, [m^3]
T1 = 273+15;// initial temperature, [K]
P3 = 1850;// maximum pressure, [kN/m^2]
V2 = 2.8*10^-3;// compressed volume, [m^3]
Gama = 1.4;// heat capacity
R = .29;// gas constant, [kJ/kg k]

// solution
// taking reference  Fig. 15.29
// (a)
// for process 1-2
// using PV^(Gama)=constant for process 1-2
P2 = P1*(V1/V2)^(Gama);// pressure at stage2,. [MN/m^2]
T2 = T1*(V1/V2)^(Gama-1);// temperature at stage 2, [K]

// for process 2-3
// since volumee is constant in process 2-3 , so using P/T=constant, so
T3 = T2*(P3/P2);// volume at stage 3, [K]

// for process 3-4
P4 = P1;
T4 = T3*(P4/P3)^((Gama-1)/Gama);// temperature

TE = 1-Gama*(T4-T1)/(T3-T2);// thermal efficiency
mprintf('\n (a) The thermal efficiency is  =  %f percent\n',TE*100);

// (b)
cv = R/(Gama-1);// heat capacity at copnstant volume, [kJ/kg k]
m = P1*V1/(R*T1);// mass of gas, [kg]
Q1 = m*cv*(T3-T2);// heat received, [kJ/cycle]
mprintf('\n (b) The heat received is  =  %f kJ/cycle\n',Q1);

// (c)
cp = Gama*cv;// heat capacity at constant at constant pressure, [kJ/kg K]
Q2 = m*cp*(T4-T1);// heat rejected, [kJ/cycle]
mprintf('\n (c) The heat rejected is  =  %f kJ/cycle\n',Q2);

// (d)
W = Q1-Q2;// net work , [kJ/cycle]
mprintf('\n (d) The net work is  =  %f  kJ/cycle\n',W);

// (e)
// pressure is constant for process 1-4, so V/T=constant
V4 = V1*(T4/T1);// volume, [m^3]
V3 = V2;// for process 2-3
P4 = P1;// for process 1-4
PW = (P3*V3-P1*V1)/(Gama-1);// positive work done, [kJ/cycle]
WR = W/PW;//  work ratio
mprintf('\n (e) The work ratio is  =  %f\n',WR);

// (f)
Pm = W/(V4-V2);// mean effective pressure, [kN/m^2]
mprintf('\n (f) The mean effefctive pressure is  =  %f  kN/m^2\n',Pm);

// (g)
CE = (T3-T1)/T3;// carnot efficiency
mprintf('\n (g) The carnot efficiency is  =  %f percent\n',CE*100);

// there is minor variation in answer reported in the book

//  End
