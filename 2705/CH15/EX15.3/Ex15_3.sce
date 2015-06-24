clear;
clc;
disp('Example 15.3');

// aim : To determine
// (a) the pressure, volume and temperature at each corner of the cycle
// (b) the thermal efficiency of the cycle
// (c) the work done per cycle
// (d) the work ratio

// given values
m = 1;// mass of air, [kg]
P1 = 1730;// initial pressure of carnot engine, [kN/m^2]
T1 = 273+300;// initial temperature, [K]
R = .29;// [kJ/kg K]
Gama = 1.4;// heat capacity ratio

// solution
// taking reference  Fig. 15.15
// (a)
// for the isothermal process 1-2
// using ideal gas law
V1 = m*R*T1/P1;// initial volume, [m^3]
T2 = T1;
V2 = 3*V1;// given condition
// for isothermal process, P1*V1=P2*V2, so
P2 = P1*(V1/V2);// [MN/m^2]
// for the adiabatic process 2-3
V3 = 6*V1;// given condition
T3 = T2*(V2/V3)^(Gama-1);
// also for adiabatic process, P2*V2^Gama=P3*V3^Gama, so
P3 = P2*(V2/V3)^Gama;
// for the isothermal process 3-4
T4 = T3;
// for both adiabatic processes, the temperataure ratio is same, 
// T1/T4 = T2/T3=(V4/V1)^(Gama-1)=(V3/V2)^(Gama-1), so
V4 = 2*V1;
// for isothermal process, 3-4, P3*V3=P4*V4, so
P4 = P3*(V3/V4);
disp('(a) At line 1');
mprintf('\n V1  =  %f  m^3, t1  =  %f  C,  P1  =  %f  kN/m^2\n',V1,T1-273,P1);

disp('At line 2');
mprintf('\n V2  =  %f  m^3, t2  =  %f  C,  P2  =  %f  kN/m^2\n',V2,T2-273,P2);

disp('At line 3');
mprintf('\n V3  =  %f  m^3, t3  =  %f  C,  P3  =  %f  kN/m^2\n',V3,T3-273,P3);


disp('At line 4');
mprintf('\n V4  =  %f  m^3, t4  =  %f  C,  P4  =  %f  kN/m^2\n',V4,T4-273,P4);


// (b)
n_the = (T1-T3)/T1;// thermal efficiency
mprintf('\n (b) The thermal efficiency of the cycle is  =  %f percent\n',n_the*100);

// (c)
W = m*R*T1*log(V2/V1)*n_the;//  work done, [J]
mprintf('\n (c) The work done per cycle is  =  %f  kJ\n',W);

//  (d)
wr = (T1-T3)*log(V2/V1)/(T1*log(V2/V1)+(T1-T3)/(Gama-1));// work ratio
mprintf('\n (d) The work ratio is  =  %f\n',wr);

// there is calculation mistake in the book so answer is not matching

//   End

