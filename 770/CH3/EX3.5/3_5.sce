clear;
clc;

//Example - 3.5
//Page number - 86
printf("Example - 3.5 and Page number - 86\n\n");

//Given

T = 300;//[K] - Temperature
P1 = 1;//[bar] - Initial pressure
P1 = P1*10^(5);//[N/m^(2)]
P2 = 8;//[bar] - Final pressure
P2 = P2*10^(5);//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant
y1 = 0.21;// Mole fraction of component 1 (oxygen)
y2 = 0.79;// Mole fraction of component 1 (nitroen)

// For component 1 (Oxygen)
Tc_1 = 154.6;//[K]
Pc_1 = 50.43*10^(5);//[N/m^(2)]
Vc_1 = 73.4;//[cm^(3)/mol]
Zc_1 = 0.288;
w_1 = 0.022;

//For component 2 (Nitrogen)
Tc_2 = 126.2;//[K]
Pc_2 = 34*10^(5);//[N/m^(2)]
Vc_2 = 89.2;//[cm^(3)/mol]
Zc_2 = 0.289;
w_2 = 0.038;

//For component 1
Tr_1 = T/Tc_1;//Reduced temperature
//At reduced temperature
B1_0 = 0.083 - (0.422/(Tr_1)^(1.6));
B1_1 = 0.139 - (0.172/(Tr_1)^(4.2));
// We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B_11 = ((B1_0+(w_1*B1_1))*(R*Tc_1))/Pc_1;//[m^(3)/mol]

// Similarly for component 2
Tr_2 = T/Tc_2;//Reduced temperature
// At reduced temperature Tr_2,
B2_0 = 0.083 - (0.422/(Tr_2)^(1.6));
B2_1 = 0.139 - (0.172/(Tr_2)^(4.2));
B_22 = ((B2_0 + (w_2*B2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]

//For cross coeffcient
Tc_12 = (Tc_1*Tc_2)^(1/2);//[K]
w_12 = (w_1 + w_2)/2;
Zc_12 = (Zc_1+Zc_2)/2;
Vc_12 = (((Vc_1)^(1/3)+(Vc_2)^(1/3))/2)^(3);//[cm^(3)/mol]
Vc_12 = Vc_12*10^(-6);//[m^(3)/mol]
Pc_12 = (Zc_12*R*Tc_12)/Vc_12;//[N/m^(2)]

// Now we have,(B_12*Pc_12)/(R*Tc_12) = B_0 + (w_12*B_1)
// where B_0 and B_1 are to be evaluated at Tr_12
Tr_12 = T/Tc_12;
// At reduced temperature Tr_12
B_0 = 0.083 - (0.422/(Tr_12)^(1.6));
B_1 = 0.139 - (0.172/(Tr_12)^(4.2));
B_12 = ((B_0+(w_12*B_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]

// For the mixture
B = y1^(2)*B_11 + 2*y1*y2*B_12+y2^(2)*B_22;//[m^(3)/mol]
// Now we have to calculate molar volume i.eV1 and V2 at given conditions

// At state 1,
deff('[y]=f(V)','y=V^(2)-(R*T/P1)*V-(B*R*T)/P1');
V_1=fsolve(-1,f);
V_2=fsolve(1,f);
// We will take root near to (R*T)/P, i.e V_2
V1 = V_2;//[m^(3)/mol]

// At state 2,
deff('[y]=f1(V)','y=V^(2)-(R*T/P2)*V-(B*R*T)/P2');
V_3=fsolve(-1,f1);
V_4=fsolve(1,f1);
V2 = V_4;//[m^(3)/mol]

// Work done per mole of air is given by, w=integral(Pdv)
// Z = 1 + (B/V)
// (P*V)/(R*T) = 1 +( B/V)
// P = (R*T)/V+(B*R*T)/V^(2)
// w = integrate('(R*T/V)+(B*R*T)/V^(2)','V',V1,V2)
// Under isothermal conditions,
w = R*T*log(V2/V1)-B*R*T*((1/V2)-(1/V1));
w = w*10^(-3);//[kJ/mol]
printf(" The work done is %f kJ/mol",w);


