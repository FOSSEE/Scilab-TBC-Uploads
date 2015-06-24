clear;
clc;
funcprot(0);

// Example - 2.11
// Page number - 53
printf("Example - 2.11 and Page number - 53\n\n");

// Given
P = 6*10^(6);// [Pa] - Pressure
P_max = 12*10^(6);// [Pa] - Max pressure to which cylinder may be exposed
T = 280;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant

//(1).Assuming ideal gas behaviour,
V_ideal = (R*T)/P;//[m^(3)/mol]
//Now when temperature and pressure are increased,the molar volume remains same,as total volume and number of moles are same.
//For max pressure of 12 MPa,temperature is
T_max_ideal = (P_max*V_ideal)/R;
printf(" (1).The maximum temperature assuming ideal behaviour is %f K\n",T_max_ideal);

// (2).Assuming virial equation of state
// For component 1 (methane),at 280 K
Tc_1 = 190.6;//[K]
Pc_1 = 45.99*10^(5);//[N/m^(2)]
Vc_1 = 98.6;//[cm^(3)/mol]
Zc_1 = 0.286;
w_1 = 0.012;
Tr_1 = T/Tc_1;//Reduced temperature
B1_0 = 0.083 - (0.422/(Tr_1)^(1.6));
B1_1 = 0.139 - (0.172/(Tr_1)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B_11 = ((B1_0 + (w_1*B1_1))*(R*Tc_1))/Pc_1;//[m^(3)/mol]

//For component 2 (Propane)
Tc_2 = 369.8;//[K]
Pc_2 = 42.48*10^(5);//[N/m^(2)]
Vc_2 = 200;//[cm^(3)/mol]
Zc_2 = 0.276;
w_2 = 0.152;
Tr_2 = T/Tc_2;// Reduced temperature
B2_0 = 0.083 - (0.422/(Tr_2)^(1.6));
B2_1 = 0.139 - (0.172/(Tr_2)^(4.2));
B_22 = ((B2_0 + (w_2*B2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]

//For cross coeffcient
y1 = 0.8;//mole fraction of component 1
y2 = 0.2;//mole fraction of component 2
Tc_12 = (Tc_1*Tc_2)^(1/2);//[K]
w_12 = (w_1 + w_2)/2;
Zc_12 = (Zc_1 + Zc_2)/2;
Vc_12 = (((Vc_1)^(1/3) + (Vc_2)^(1/3))/2)^(3);//[cm^(3)/mol]
Vc_12 = Vc_12*10^(-6);//[m^(3)/mol]
Pc_12 = (Zc_12*R*Tc_12)/Vc_12;//[N/m^(2)]
Tr_12 = T/Tc_12;

//At reduced temperature,Tr_12,
B_0 = 0.083 - (0.422/(Tr_12)^(1.6));
B_1 = 0.139 - (0.172/(Tr_12)^(4.2));
B_12 = ((B_0 + (w_12*B_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]

//For the mixture
B = y1^(2)*B_11+2*y1*y2*B_12 + y2^(2)*B_22;//[m^(3)/mol]

//Now given virial equation is, Z=1+(B*P)/(R*T)
Z = 1 + (B*P)/(R*T);
//Also Z = (P*V)/(R*T).Therefore,
V_real = (Z*R*T)/P;//[m^(3)/mol]

// This molar volume remains the same as the volume and number of moles remains fixed.
// Sice Z is a function of presure and temperature,we shall assume a temperature,calculate Z and again calculate temperature,till convergence is obtained.
// We will use the concept of iteration to compute the convergent value of temperature
// Let us start with the temperature at ideal conditions i.e T = 560 K,

T_prime = 560;//[K]
fault = 10;

while(fault > 1)
T_prime_r1 = T_prime/Tc_1;
B_prime1_0 = 7.7674*10^(-3);
B_prime1_1 = 0.13714;
B_prime_11 = ((B_prime1_0 + (w_1*B_prime1_1))*(R*Tc_1))/Pc_1;//[m^(3)/mol]

//Similarly for component 2,
T_prime_r2 = T_prime/Tc_2;
B_prime2_0 = -0.1343;
B_prime2_1 = 0.10887;
B_prime_22 = ((B_prime2_0 + (w_2*B_prime2_1))*(R*Tc_2))/Pc_2;//[m^(3)/mol]

//For cross coefficient (assuming k12=0)
//Tc_12 , w_12 , Zc_12 , Vc_12 and Pc_12 have already been calculated above,now
T_prime_r12 = T_prime/Tc_12;//
//At reduced temperature,T_prime_r12,
B_prime_0 = 0.083 - (0.422/(T_prime_r12)^(1.6));
B_prime_1 = 0.139 - (0.172/(T_prime_r12)^(4.2));
B_prime_12 = ((B_prime_0+(w_12*B_prime_1))*R*Tc_12)/Pc_12;//[m^(3)/mol]

//For the mixture
B_prime = y1^(2)*B_prime_11 + 2*y1*y2*B_prime_12 + y2^(2)*B_prime_22;//[m^(3)/mol]
Z_prime = 1 + (B_prime*P_max)/(R*T_prime);
T_new = (P_max*V_real)/(Z_prime*R);
fault = abs(T_prime - T_new);
T_prime = T_new;
end

printf(" (2).The maximum temperature assuming the gas to follow virial equation of stste is %f K\n",T_new);

