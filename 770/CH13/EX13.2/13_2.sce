clear;
clc;

//Example - 13.2
//Page number - 433
printf("Example - 13.2 and Page number - 433\n\n");

//Given
T = 310.93;//[K] - Temperature
P = 2.76*10^(6);//[Pa] - Pressure
y1 = 0.8942;//[mol] - mole fraction of component 1
y2 = 1 - y1;//[mol] - mole fraction of component 2
R=8.314;//[J/mol*K] - Universal gas constant

//For component 1 (methane)
Tc_1 = 190.6;//[K] - Critical temperature
Pc_1 = 45.99*10^(5);//[N/m^(2)] - Critical pressure
Vc_1 = 98.6;//[cm^(3)/mol] - Critical molar volume
Zc_1 = 0.286;// - Critical compressibility factor
w_1 = 0.012;// - Critical acentric factor
//Similarly for component 2 (n-Butane)
Tc_2 = 425.1;//[K]
Pc_2 = 37.96*10^(5);//[N/m^(2)]
Vc_2 = 255;//[cm^(3)/mol]
Zc_2=0.274;
w_2=0.2;

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
B2_0 = 0.083-(0.422/(Tr_2)^(1.6));
B2_1 = 0.139-(0.172/(Tr_2)^(4.2));
B_22 = ((B2_0+(w_2*B2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]

//For cross coeffcient
Tc_12 = (Tc_1*Tc_2)^(1/2);//[K]
w_12 = (w_1+w_2)/2;
Zc_12 = (Zc_1+Zc_2)/2;
Vc_12 = (((Vc_1)^(1/3)+(Vc_2)^(1/3))/2)^(3);//[cm^(3)/mol]
Vc_12 = Vc_12*10^(-6);//[m^(3)/mol]
Pc_12 = (Zc_12*R*Tc_12)/Vc_12;//[N/m^(2)]

//Given, Z = 1 + (B*P)/(R*T)
//Now we have,(B_12*Pc_12)/(R*Tc_12) = B_0 + (w_12*B_1)
//where B_0 and B_1 are to be evaluated at Tr_12
Tr_12 = T/Tc_12;
//At reduced temperature Tr_12
B_0 = 0.083-(0.422/(Tr_12)^(1.6));
B_1 = 0.139-(0.172/(Tr_12)^(4.2));
B_12 = ((B_0+(w_12*B_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]
//For the mixture
B = y1^(2)*B_11+2*y1*y2*B_12+y2^(2)*B_22;//[m^(3)/mol]

//Now del_12 can be calculated as,
del_12 = 2*B_12 - B_11 - B_22;//[m^(3)/mol]

//We have the relation, log(phi_1) = (P/(R*T))*(B_11 + y2^(2)*del_12), therefore
phi_1 = exp((P/(R*T))*(B_11 + y2^(2)*del_12));
//Similarly for component 2
phi_2 = exp((P/(R*T))*(B_22 + y1^(2)*del_12));

printf(" The value of fugacity coefficient of component 1 (phi_1) is %f\n\n",phi_1);
printf(" The value of fugacity coefficient of component 2 (phi_2) is %f\n\n",phi_2);

//Finally fugacity coefficient of the mixture is given by
//log(phi) = y1*log(phi_1) + y2*log(phi_2);
phi = exp(y1*log(phi_1) + y2*log(phi_2));

printf(" The value of fugacity coefficient of the mixture (phi) is %f ",phi);
//The fugacity coefficient of the mixture can also be obtained using
//log(phi) = (B*P)/(R*T)

