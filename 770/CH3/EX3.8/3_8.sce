clear;
clc;
funcprot(0);

//Example - 3.8
//Page number - 93
printf("Example - 3.8 and Page number - 93\n\n");


//Given
T = 20 + 273.15;//[K] - Temperature
P_1 = 140;//[kPa] - Initial pressure
P_1 = P_1*10^(3);//[Pa]
P_2 = 560;//[kPa] - Final pressure
P_2 = P_2*10^(3);//[Pa]
R = 1.987;//[cal/mol*K] - Universal gas constant

// Cp_0 = 1.648+4.124*10^(-2)*T - 1.53*10^(-5)*T^(2) + 1.74*10^(-9)*T^(3)
// Using adiabatic compression, P*V^(Y)=constant. For ideal gases
// P*(R*T/P)^(Y) = constant
// P^(1-Y)*T^(Y) = constant or,P1^(1-Y)*T1^(Y)=P2^(1-Y)*T2^(Y)
// Now,at state 1, i.e at T=20[C]
Cp_1 = 1.648+4.124*10^(-2)*T-1.53*10^(-5)*T^(2)+1.74*10^(-9)*T^(3);//[cal/mol*K] - Heat capacity at constant pressure
Cv_1 = Cp_1 - R;//[cal/mol*K] - Heat capacity at constant volume
Y1 = Cp_1/Cv_1;// Ratio of heat capacities

// Now calculatung the temperature at state 2 (T2)
// (T2/T1)=(P1/P2)^((1-Y1)/Y1)
T_1 = T;
T_2 = ((P_1/P_2)^((1-Y1)/Y1))*T_1;//[K]

// Now calculating the mean temperature
T_mean = (T_1 + T_2)/2;//[K]
// At mean temperature
Cp_2 = 1.648+4.124*10^(-2)*T_mean - 1.53*10^(-5)*T_mean^(2) + 1.74*10^(-9)*T_mean^(3);//[cal/mol*K] - Heat capacity at constant pressure
Cv_2 = Cp_2 - R;//[cal/mol*K] - Heat capacity at constant volume
Y2 = Cp_2/Cv_2;

// Calculating exit temperature
// Again using the realation,(T2/T1)=(P1/P2)^((1-Y1)/Y1)
T_exit = ((P_1/P_2)^((1-Y2)/Y2))*T_1;//[K]
// Since value of mean temperature has not changed much the molar heat capacity ratio can be assumed to be same.Therefore
// w = -delta(U)=Cv_0*(T2-T1)
w = Cv_2*(T_1 - T_exit);//[cal/mol]
w = w*4.184;//[J/mol]

printf(" The work done for adiabatic compression is %f J/mol\n",w);

