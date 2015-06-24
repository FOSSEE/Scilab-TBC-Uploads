clear;
clc;
funcprot(0);

//Example - 3.1
//Page number - 80
printf("Example - 3.1 and Page number - 80\n\n");

// Given
V_vessel = 4*10^(-3);//[m^(-3)] - Volume of vessel
T = 200+273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal fas constant
P = 1.5*10^(6);//[Pa] - Pressure
Q = 40*1000;//[J] - Heat input
// From steam table at 200 C,Psat=1.55549 MPa,therefore the steam is superheated.

// (1)
// Using steam table,at 1.5 MPa and 200 C,
V_1 = 0.1325;//[m^(3)/mol] - Specific volume
U_1 = 2598.1;//[kJ/kg] - Specific internal energy
// From first law under constant pressure,
// Q - m*P*(V2 - V1) = m*(U2 - U1)
m = V_vessel/V_1;//[kg] - Mass of system
// Putting the values,the above equation becomes
// 45283*(V2 - 0.1325) + 30.1887*(U2 - 2598.1) = 40000
// From steam table at 700 C LHS is 33917.0 and at 800 C,it is 40925.3.
// Therefore the final temperature lies between 700 and 800 C
printf(" (1).From steam table the final temperature lies between 700 and 800 C\n");

// Alternate method
// Here we use first law at constant pressure,
// Q = m*(H_2 - H_1)
H_1 = 2796.8;//[kJ/kg]
// Substituting the values,
// 40 = 0.0301887*(H_2 - 2796.8)
H_2 = (40/0.0301887) + 2796.9;//[kJ/kg]
// Threfore,final enthalpy is (H2) 4121.8 [kJ/kg] and pressure is 1.5 [MPa].
// From steam table at 1.5 [MPa]and 700 C,enthalpy is 3920.3 [kj/kg] and at 1.5 [MPa]and 800 C,enthalpy is 4152.6 [kj/kg]
printf("\tAlternate method\n");
printf("\tBy linear interpolation we get the temperature at which enthlpy is 4121.8 kJ/kg to be 786.74 C\n\n");

// (2)
// Assuming ideal behaviour.
n = (P*V_vessel)/(R*T);//[mol] - No of moles
M = 18.015;// Molecular weight of water
m_2 = n*M;//[g] - mass of moles
Cp_1 = 7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3);//[cal/mol*K] - Heat capacity at constant presure
R0 = 1.987;//[cal/mol*K] - universal gas constant
Cv_1 = Cp_1 - R0;//[cal/mol*K] - Heat capacity at constant volume
Cv_1 = Cv_1*4.184/M;//[J/g*K]
T1 = T;
// From 1st law energy balance for constant pressure, we have Q-W= m*(delta_U)
// Q = P*(V2 - V1)*m = m*Cv*(T2 - T1)
// Q = P*((T2/T1)-1)*V1*m = m*Cv*(T2-T1)
// But, (V1*Cv)=initial total volume of system = V_vessel
// Q-P((T2/T1)-1)*V_vessel = m_2*Cv_0*(T2-T1);
deff('[y]=f(T2)','y=Q-P*((T2/T1)-1)*V_vessel-m_2*Cv_1*(T2-T1)');
T2_1 = fsolve(1,f);
//The heat capacity should be evaluted at mean temperature
T_mean = (T1 + T2_1)/2;
Cp_2 = 7.7 + 0.04594*10^(-2)*T_mean+0.2521*10^(-5)*T_mean^(2) - 0.8587*10^(-9)*T_mean^(3);//[cal/mol*K] - Heat capacity at constant presure
Cv_2 = Cp_2-R0;//[cal/mol*K] - Heat capacity at constant volume
Cv_2 = Cv_2*4.184/M;//[J/g*K]
//Now again solving the equation Q=P*((T2/T1)-1)*V1*m = m*Cv*(T2-T1),for Cv=Cv_2
deff('[y]=f1(T2)','y=Q-P*((T2/T1)-1)*V_vessel-m_2*Cv_2*(T2-T1)');
T2_2 = fsolve(1,f1);
printf(" (2).The temperature assuming ideal behaviour is %f K\n",T2_2);

// Alternate method
// From 1st law at constant pressure, we have Q = m*Cp(T2-T1)
T2_3 = Q/(m_2*(Cp_1*4.184/M))+T1;
//We can calculate the mean temperature as done above
T_mean1 = (T1 + T2_3)/2;//[J/g*K]
//The heat capacity should be evaluted at mean temperature
Cp_3 = 7.7 + 0.04594*10^(-2)*T_mean1 + 0.2521*10^(-5)*T_mean1^(2)-0.8587*10^(-9)*T_mean1^(3);//[cal/mol*K] - Heat capacity at constant presure
Cp_3 = Cp_3*4.184/M;//[J/g*K]
// Again solving the equation Q = m*Cp(T2-T1), for Cp=Cp_3
T2_4 = Q/(m_2*Cp_3) + T1;
printf("\tAlternate method\n");
printf("\tThe temperature assuming ideal behaviour (alternate method) is %f K\n",T2_4);

