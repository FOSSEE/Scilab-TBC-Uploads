clear;
clc;

//Example - 10.22
//Page number - 363
printf("Example - 10.22 and Page number - 363\n\n");

//Given
T = 50+273.15;//[K] - Temperature
P = 25*10^(3);//[Pa] - Pressure
y1 = 0.5;//[mol] - mole fraction of equimolar mixture
y2 = 0.5;
R = 8.314;//[J/mol*K] - Universal gas constant

//For component 1 (methyl ethyl ketone)
Tc_1  = 535.5;//[K] - Critical temperature
Pc_1 = 41.5*10^(5);//[N/m^(2)] - Critical pressure
Vc_1 = 267;//[cm^(3)/mol] - Critical volume
Zc_1 = 0.249;// Critical compressibility factor
w_1 = 0.323;// acentric factor

//For component 2 (toluene)
Tc_2 = 591.8;//[K]
Pc_2 = 41.06*10^(5);//[N/m^(2)]
Vc_2 = 316;//[cm^(3)/mol]
Zc_2 = 0.264;
w_2 = 0.262;

// For equation of state Z = 1 + B/V
//For component 1, let us calculate B and dB/dT
Tr_1 = T/Tc_1;//Reduced temperature
//At reduced temperature
B1_0 = 0.083-(0.422/(Tr_1)^(1.6));
B1_1 = 0.139-(0.172/(Tr_1)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B_11 = ((B1_0+(w_1*B1_1))*(R*Tc_1))/Pc_1;// [m^(3)/mol-K] 
dB0_dT_1 = 0.422*1.6*Tc_1^(1.6)*T^(-2.6);// [m^(3)/mol-K] -  (dB_0/dT)
dB1_dT_1 = 0.172*4.2*Tc_1^(4.2)*T^(-5.2);// [m^(3)/mol-K] -  (dB_1/dT)
dB_dT_1 = ((R*Tc_1)/Pc_1)*((dB0_dT_1) + w_1*(dB1_dT_1));//[m^(3)/mol-K] -  (dB/dT)_

//Similarly for component 2
Tr_2 = T/Tc_2;//Reduced temperature
//At reduced temperature Tr_2,
B2_0 = 0.083 - (0.422/(Tr_2)^(1.6));
B2_1 = 0.139 - (0.172/(Tr_2)^(4.2));
B_22 = ((B2_0+(w_2*B2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]
dB0_dT_2 = 0.422*1.6*Tc_2^(1.6)*T^(-2.6);// [m^(3)/mol-K] -  (dB_0/dT)
dB1_dT_2 = 0.172*4.2*Tc_2^(4.2)*T^(-5.2);// [m^(3)/mol-K] -  (dB_1/dT)
dB_dT_2 = ((R*Tc_2)/Pc_2)*((dB0_dT_2) + w_2*(dB1_dT_2));//[m^(3)/mol-K] -  (dB/dT)_

//For cross coeffcient, let us calculate B and dB/dT
Tc_12 = (Tc_1*Tc_2)^(1/2);//[K]
w_12 = (w_1 + w_2)/2;
Zc_12 = (Zc_1 + Zc_2)/2;
Vc_12 = (((Vc_1)^(1/3) + (Vc_2)^(1/3))/2)^(3);//[cm^(3)/mol]
Vc_12 = Vc_12*10^(-6);//[m^(3)/mol]
Pc_12 = (Zc_12*R*Tc_12)/Vc_12;//[N/m^(2)]

//Now we have,(B_12*Pc_12)/(R*Tc_12) = B_0+(w_12*B_1)
//where B_0 and B_1 are to be evaluated at Tr_12
Tr_12 = T/Tc_12;
//At reduced temperature Tr_12
B_0 = 0.083 - (0.422/(Tr_12)^(1.6));
B_1 = 0.139 - (0.172/(Tr_12)^(4.2));
B_12 = ((B_0 + (w_12*B_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]
dB0_dT_12 = 0.422*1.6*Tc_12^(1.6)*T^(-2.6);// [m^(3)/mol-K] -  (dB_0/dT)
dB1_dT_12 = 0.172*4.2*Tc_12^(4.2)*T^(-5.2);// [m^(3)/mol-K] -  (dB_1/dT)
dB_dT_12 = ((R*Tc_12)/Pc_12)*((dB0_dT_12) + w_12*(dB1_dT_12));//[m^(3)/mol-K] -  (dB/dT)_12

//For the mixture
B = y1^(2)*B_11 + 2*y1*y2*B_12 + y2^(2)*B_22;//[m^(3)/moL]

// The equation of state can be written as
// V^(2) - ((R*T)/P) - (B*R*T)/P = 0
// V^(2) - 0.1075*V + 1.737*10^(-4) = 0
deff('[y]=f(V)','y=V^(2) - 0.1075*V + 1.737*10^(-4)');
V1 = fsolve(0.1,f);
V2 = fsolve(1,f);
// We will consider the root which is near to R*T/P
V = V1;
// dB/dT = y_1^(2)*dB_11/dT + y_2^(2)*dB_22/dT + 2*y_1*y_2*dB_12/dT
dB_dT = y1^(2)*dB_dT_1 + y2^(2)*dB_dT_2 + 2*y1*y2*dB_dT_12;//[m^(3)/mol-K]

// For equation of state Z = 1 + B/V
H_R = (B*R*T)/V - ((R*T^(2))/V)*dB_dT;//[J/mol]

printf(" (1).The value of H_R for the mixture using virial equation of state is %f J/mol\n\n",H_R);

//(2)
//  For van der Walls equation of state 
a_11 = (27*R^(2)*Tc_1^(2))/(64*Pc_1);//[Pa-m^(6)/mol^(2)]
a_22 = (27*R^(2)*Tc_2^(2))/(64*Pc_2);//[Pa-m^(6)/mol^(2)]
a_12 = (a_11*a_22)^(1/2);
b_1 = (R*Tc_1)/(8*Pc_1);//[m^(3)/mol]
b_2 = (R*Tc_2)/(8*Pc_2);//[m^(3)/mol]

// For the mixture
a = y1^(2)*a_11 + y2^(2)*a_22 + 2*y1*y2*a_12;//[Pa-m^(6)/mol^(2)]
b = y1*b_1 + y2*b_2;//[m^(3)/mol]

// From the cubic form of van der Walls equation of state
deff('[y]=f1(V)','y=V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P');
V2_1 = fsolve(0.1,f1);
V2_2 = fsolve(10,f1);
V2_3 = fsolve(100,f1);
// The largest root is considered
V_2 = V2_1;

// The residual enthalpy is given by
H_R_2 = P*V_2 - R*T -a/V_2;//[J/mol]

printf(" (2).The value of H_R for the mixture using van der Walls equation of state is %f J/mol\n\n",H_R_2);


