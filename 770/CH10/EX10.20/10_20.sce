clear;
clc;
funcprot(0);

//Example - 10.20
//Page number - 359
printf("Example - 10.20 and Page number - 359\n\n");

//Given
P_1 = 6;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
T_1 = 100 + 273.15;//[T] - Initial temperature
P_2 = 12;//[bar] - Final pressure
P_2 = P_2*10^(5);//[Pa]
T_2 = 500 + 273.15;//[K] - Final temperature
R = 8.314;//[J/mol*K] - Universal gas constant
Y = 1.126;// Index of expansion
Cp_0 = (R*Y)/(Y-1);//[J/mol-K]

// For propane
Tc = 369.8;//[K]
Pc = 42.48;//[bar]
Pc = Pc*10^(5);
w = 0.152;

//(1)
// For van der Walls equation of state
a = (27*R^(2)*Tc^(2))/(64*Pc);//[Pa-m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]

// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b + (R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0

// At state 1 (100 C and 6 bar) 
deff('[y]=f(V)','y=V^(3)-(b+(R*T_1)/P_1)*V^(2)+(a/P_1)*V-(a*b)/P_1');
V_1_1 = fsolve(1,f);
V_1_2 = fsolve(10,f);
V_1_3 = fsolve(100,f);
// The largest root is considered because of molar volume of vapour phase is to determined
V_1 = V_1_1;//[m^(3)/mol]
// Thus compressibility factor is
Z_1 = (P_1*V_1)/(R*T_1);//compressibility factor

H_R_1 = (Z_1 - 1)*R*T_1 - (a/V_1);// [J/mol]
S_R_1 = R*log((P_1*(V_1-b))/(R*T_1));// [J/mol-K]

// At state 2 (500 C and 12 bar) 
deff('[y]=f1(V)','y=V^(3)-(b+(R*T_2)/P_2)*V^(2)+(a/P_2)*V-(a*b)/P_2');
V_2_1 = fsolve(1,f1);
V_2_2 = fsolve(10,f1);
V_2_3 = fsolve(100,f1);
// The largest root is considered because of molar volume of vapour phase is to determined
V_2 = V_2_1;//[m^(3)/mol]
// Thus compressibility factor is
Z_2 = (P_2*V_2)/(R*T_2);//compressibility factor

H_R_2 = (Z_2 - 1)*R*T_2 - (a/V_2);// [J/mol]
S_R_2 = R*log((P_2*(V_2-b))/(R*T_2));// [J/mol-K]

// Ideal gas entropy change is given by
delta_S_ig = Cp_0*log(T_2/T_1) - R*log(P_2/P_1);//[J/mol-K]
// Entropy change is given by
delta_S = delta_S_ig + (S_R_2 - S_R_1);//[J/mol-k]

// Ideal gas enthalpy change is given by
delta_H_ig = Cp_0*(T_2 - T_1);//[J/mol]
// Enthalpy change is given by
delta_H = delta_H_ig + (H_R_2 - H_R_1);//[J/mol]

printf("(1).The change in enthalpy is %f J/mol\n",delta_H);
printf("    The change in entropy is %f J/mol-K\n\n",delta_S);

//(2)
// Virial equation of state

// At state 1 (372.15 K, 6 bar) let us calculate B and dB/dT
Tr = T_1/Tc;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]
dB0_dT = 0.422*1.6*Tc^(1.6)*T_1^(-2.6);// (dB_0/dT) at state 1
dB1_dT = 0.172*4.2*Tc^(4.2)*T_1^(-5.2);// (dB_1/dT) at state 1
dB_dT = ((R*Tc)/Pc)*((dB0_dT) + w*(dB1_dT));// (dB/dT) at state 1

H_R_1_2 = B*P_1 - P_1*T_1*dB_dT;//[J/mol] - Residual enthalpy at state 1
S_R_1_2 = -P_1*(dB_dT);//[J/mol-K] - Residual entropy at state 1

// At state 2 (773.15 K, 12 bar)
Tr_2 = T_2/Tc;// Reduced temperature
B_0_2 = 0.083-(0.422/(Tr_2)^(1.6));
B_1_2 = 0.139-(0.172/(Tr_2)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B_2 = ((B_0_2+(w*B_1_2))*(R*Tc))/Pc;//[m^(3)/mol]
dB0_dT_2 = 0.422*1.6*Tc^(1.6)*T_2^(-2.6);// (dB_0/dT) at state 1
dB1_dT_2 = 0.172*4.2*Tc^(4.2)*T_2^(-5.2);// (dB_1/dT) at state 1
dB_dT_2 = ((R*Tc)/Pc)*((dB0_dT_2) + w*(dB1_dT_2));// (dB/dT) at state 1

H_R_2_2 = B_2*P_2 - P_2*T_2*dB_dT_2;//[J/mol] - Residual enthalpy at state 1
S_R_2_2 = -P_2*(dB_dT_2);//[J/mol-K] - Residual entropy at state 1

delta_H_2 = delta_H_ig + (H_R_2_2 - H_R_1_2);//[J/mol]
delta_S_2 = delta_S_ig + (S_R_2_2 - S_R_1_2);//[J/mol]

printf("(2).The change in enthalpy is %f J/mol\n",delta_H_2);
printf("    The change in entropy is %f J/mol-K\n",delta_S_2);


