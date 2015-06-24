clear;
clc;

//Example - 2.10
//Page number - 52
printf("Example - 2.10 and Page number - 52\n\n");

//Given
T = 71+273.15;//[K] - Temperature
P = 69*10^(5);//[N/m^(2)] - Pressure
y1 = 0.5;//[mol] - mole fraction of equimolar mixture
y2 = 0.5;
R = 8.314;//[J/mol*K] - Universal gas constant

//For component 1 (methane)
Tc_1  =190.6;//[K] - Critical temperature
Pc_1 = 45.99*10^(5);//[N/m^(2)] - Critical pressure
Vc_1 = 98.6;//[cm^(3)/mol] - Critical volume
Zc_1 = 0.286;// Critical compressibility factor
w_1 = 0.012;// acentric factor

//For component 2 (hydrogen sulphide)
Tc_2 = 373.5;//[K]
Pc_2 = 89.63*10^(5);//[N/m^(2)]
Vc_2 = 98.5;//[cm^(3)/mol]
Zc_2 = 0.284;
w_2 = 0.094;

//For component 1
Tr_1 = T/Tc_1;//Reduced temperature
//At reduced temperature
B1_0 = 0.083-(0.422/(Tr_1)^(1.6));
B1_1 = 0.139-(0.172/(Tr_1)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B_11 = ((B1_0+(w_1*B1_1))*(R*Tc_1))/Pc_1;//[m^(3)/mol]

//Similarly for component 2
Tr_2 = T/Tc_2;//Reduced temperature
//At reduced temperature Tr_2,
B2_0 = 0.083 - (0.422/(Tr_2)^(1.6));
B2_1 = 0.139 - (0.172/(Tr_2)^(4.2));
B_22 = ((B2_0+(w_2*B2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]

//For cross coeffcient
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
B_12=((B_0 + (w_12*B_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]

//For the mixture
B = y1^(2)*B_11+2*y1*y2*B_12 + y2^(2)*B_22;//[m^(3)/mol]

//Now given virial equation is, Z=1+(B*P)/(R*T)
Z = 1 + (B*P)/(R*T);

//Also Z = (P*V)/(R*T).Therefore,
V = (Z*R*T)/P;//[m^(3)/mol]

printf(" The molar volume of the mixture is %e m^(3)/mol",V);
//The value obtained is near the experimental value of V_exp = 3.38*10^(-4) m^(3)/mol

