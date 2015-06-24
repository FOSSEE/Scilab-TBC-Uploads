clear;
clc;

//Example - 2.9
//Page number - 51
printf("Example - 2.9 and Page number - 51\n\n");

//Given
T = 444.3;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant
B_11 = -8.1;//[cm^(3)/mol]
B_11 = -8.1*10^(-6);//[m^(3)/mol]
B_22 = -293.4*10^(-6);//[m^(3)/mol]
y1 = 0.5;// mole fraction // equimolar mixture
y2 = 0.5;

// For component 1 (methane)
Tc_1 = 190.6;//[K] - cricitical temperature
Vc_1 = 99.2;//[cm^(3)/mol] - cricitical molar volume
Zc_1 = 0.288;// critical compressibility factor
w_1 = 0.012;// acentric factor

// For component 2 (n-butane)
Tc_2 = 425.2;//[K]
Vc_2 = 255.0;//[cm^(3)/mol]
Zc_2 = 0.274;
w_2 = 0.199;

//Using virial mixing rule,we get
Tc_12 = (Tc_1*Tc_2)^(1/2);//[K]
w_12 = (w_1 + w_2)/2;
Zc_12 = (Zc_1+Zc_2)/2;
Vc_12 = (((Vc_1)^(1/3) + (Vc_2)^(1/3))/2)^(3);//[cm^(3)/mol]
Vc_12 = Vc_12*10^(-6);//[cm^(3)/mol]
Pc_12 = (Zc_12*R*Tc_12)/Vc_12;//[N/m^(2)]
Tr_12 = T/Tc_12;//Reduced temperature
B_0 = 0.083 - (0.422/(Tr_12)^(1.6));
B_1 = 0.139 - (0.172/(Tr_12)^(4.2));

//We know,(B_12*Pc_12)/(R*Tc_12) = B_0 + (w_12*B_1)
B_12 = ((B_0+(w_12*B_1))*(R*Tc_12))/Pc_12;//[m^(3)/mol] - Cross coefficient
B = y1^(2)*B_11+2*y1*y2*B_12+y2^(2)*B_22;//[m^(3)/mol] - Second virial coefficient for mixture
B = B*10^(6);//[cm^(3)/mol]
printf(" The second virial coefficient,(B) for the mixture of gas is %f cm^(3)/mol",B);



