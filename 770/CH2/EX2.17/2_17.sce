clear;
clc;
funcprot(0);

// Example - 2.17
// Page number - 70
printf("Example - 2.17 and Page number - 70\n\n");

//Given
T = 310.93;//[K] - Temperature
P = 2.76*10^(6);//[N/m^(2)] - Pressure
R = 8.314;//[J/mol*K] - Universal gas constant
y1 = 0.8942;// Mole fraction of component 1 (methane)
y2 = 1-y1;// Mole fraction of component 2 (n-butane)

//For component 1 (methane)
Tc_1 = 190.58;//[K] - Cricitical temperature
Pc_1 = 46.05;//[bar] - Cricitical pressure
Pc_1 = Pc_1*10^(5);//[N/m^(2)]
Zc_1 = 0.288;// Critical compressibility factor
Vc_1 = 99.1;//[cm^(3)/mol]
Vc_1 = Vc_1*10^(-6);//[m^(3)/mol]
w_1 = 0.011;// Acentric factor

//For component 2 (n-butane)
Tc_2 = 425.18;//[K] - Cricitical temperature
Pc_2 = 37.97;//[bar] - Cricitical pressure
Pc_2 = Pc_2*10^(5);// [N/m^(2)]
Zc_2 = 0.274;// Critical compressibility factor
Vc_2 = 255.1;// [cm^(3)/mol]
Vc_2 = Vc_2*10^(-6);// [m^(3)/mol]
w_2 = 0.193;// Acentric factor

// (1)
// Virial equation of state, Z = 1 + (B*P)/(R*T)
// For component 1 (methane)
Tr_1 = T/Tc_1;//Reduced temperature
// At reduced temperature
B1_0 = 0.083 - (0.422/(Tr_1)^(1.6));
B1_1 = 0.139 - (0.172/(Tr_1)^(4.2));
// We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B_11 = ((B1_0+(w_1*B1_1))*(R*Tc_1))/Pc_1;//[m^(3)/mol]

//Similarly for component 2
Tr_2 = T/Tc_2;//Reduced temperature
//At reduced temperature Tr_2,
B2_0 = 0.083 - (0.422/(Tr_2)^(1.6));
B2_1 = 0.139 - (0.172/(Tr_2)^(4.2));
B_22 = ((B2_0 + (w_2*B2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]

//For cross coeffcient
Tc_12 = (Tc_1*Tc_2)^(1/2);//[K]
w_12 = (w_1 + w_2)/2;
Zc_12 = (Zc_1 + Zc_2)/2;
Vc_12 = (((Vc_1)^(1/3)+(Vc_2)^(1/3))/2)^(3);//[m^(3)/mol]
Pc_12 =(Zc_12*R*Tc_12)/Vc_12;//[N/m^(2)]

//Now we have,(B_12*Pc_12)/(R*Tc_12) = B_0+(w_12*B_1)
//where B_0 and B_1 are to be evaluated at Tr_12
Tr_12 = T/Tc_12;
//At reduced temperature Tr_12
B_0 = 0.083 - (0.422/(Tr_12)^(1.6));
B_1 = 0.139 - (0.172/(Tr_12)^(4.2));
B_12 = ((B_0+(w_12*B_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]

//For the mixture
B = y1^(2)*B_11+2*y1*y2*B_12+y2^(2)*B_22;//[m^(3)/mol]
Z_1 = 1+(B*P)/(R*T);//compressibility factor
printf(" (1).The compressibility factor of mixture using Virial equation of state is %f\n",Z_1);

// (2)
// Pseudo reduced method.
T_pc = (y1*Tc_1)+(y2*Tc_2);//[K] - Cricitical temperature
P_pc = (y1*Pc_1)+(y2*Pc_2);//[N/m^(2)] - Cricitical pressure
w = (y1*w_1)+(y2*w_2);// Acentric factor
T_pr = T/T_pc;// Reduced temperature
P_pr = P/P_pc;// Reduced pressure
//At this value of Tpr,
B0 = 0.083 - (0.422/(T_pr)^(1.6));
B1 = 0.139 - (0.172/(T_pr)^(4.2));
Z0 = 1 + B0*(P_pr/T_pr);
Z1 = B1*(P_pr/T_pr);
Z = Z0 + w*Z1;
printf(" (2).The compressibility factor of mixture using pseudo reduced method is %f\n",Z);

// (3)
// Redlich Kwong equation of state is given by
// P = ((R*T)/(V-b)) - (a/(T^(1/2)*V*(V+b)))
// For methane,component 1
a_1 = (0.42748*(R^(2))*(Tc_1^(2.5)))/Pc_1;//[Pa*m^(6)*K^(1/2)/mol]
b_1 = (0.08664*R*Tc_1)/Pc_1;//[m^(3)/mol]
//For n-butane,component 2
a_2 = (0.42748*(R^(2))*(Tc_2^(2.5)))/Pc_2;//[Pa*m^(6)*K^(1/2)/mol]
b_2 = (0.08664*R*Tc_2)/Pc_2;//[m^(3)/mol]
//For the mixture
a_12 = (a_1*a_2)^(1/2);//[Pa*m^(6)*K^(1/2)/mol]
a = y1^(2)*a_1 + 2*y1*y2*a_12 + y2^(2)*a_2;//[Pa*m^(6)*K^(1/2)/mol]
b = (y1*b_1) + (y2*b_2);//[m^(3)/mol]
// The cubic form of Redlich Kwong equation of state is given by,
// V^(3) - ((R*T)/P)*V^(2) - ((b_1^(2)) + ((b_1*R*T)/P) - (a/(T^(1/2)*P))*V - (a*b)/(T^(1/2)*P) = 0
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)-((R*T)/P)*V^(2)-((b^(2))+((b*R*T)/P)-(a/(T^(1/2)*P)))*V-(a*b)/(T^(1/2)*P)');
V_1=fsolve(1,f);
V_2=fsolve(10,f);
V_3=fsolve(100,f);
// Thus compressibility factor is
Z_3 = (P*V_1)/(R*T);//compressibility factor
printf(" (3).The compressibility factor of mixture using Redlich Kwong equation of state is %f\n",Z_3);

