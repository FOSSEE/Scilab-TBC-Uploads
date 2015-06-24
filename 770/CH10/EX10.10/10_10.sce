clear;
clc;

//Example - 10.10
//Page number - 345
printf("Example - 10.10 and Page number - 345\n\n");

//Given
P_1 = 1*10^(6);//[Pa] - Initial pressure
T_1 = 200 + 273.15;//[K] - Initial temperature
P_2 = 8*10^(6);//[Pa] - Final pressure
Tc = 647.1;//[K] - Critical temperature of water
Pc = 220.55;//[bar] - Critical pressure of water
Pc = Pc*10^(5);//[Pa]
w = 0.345;
R = 8.314;//[J/mol*K] - Universal gas constant

// For the virial gas the following are the relations for residual enthalpy and entropy
// H_R = B*P - P*T*(dB/dT) 
// S_R = -P*(dB/dT)
// Where, (dB/dT) = ((R*Tc)/Pc)*((dB_0/dT) + w*(dB_1/dT))
// dB0_dT = 0.422*1.6*Tc^(1.6)*T^(-2.6);// (dB_0/dT)
// dB1_dT = 0.172*4.2*Tc^(4.2)*T^(-5.2);// (dB_1/dT)

// (1)
Cp_0 = 29.114;//[J/mol-K] - Specific heat capacity at constant pressure
// For the isentropic process entropy change is zero, thus
// delta_S = Cp_0*log(T_2/T_1) - P_2*(dB/dT)_2 + P_1*(dB/dT)_1 = 0

// At state 1, 
Tr_1 = T_1/Tc;
B0_1 = 0.083 - 0.422/(Tr_1^(1.6));
B1_1 = 0.139 - 0.172/(Tr_1^(4.2));
// (B*Pc)/(R*Tc) = B0 + w*B1
B_1 = ((B0_1 + w*B1_1)*(R*Tc))/Pc;// [m^(3)/mol] - Second virial coefficient at state 1
dB0_dT_1 = 0.422*1.6*Tc^(1.6)*T_1^(-2.6);// (dB_0/dT)
dB1_dT_1 = 0.172*4.2*Tc^(4.2)*T_1^(-5.2);// (dB_1/dT)
dB_dT_1 = ((R*Tc)/Pc)*((dB0_dT_1) + w*(dB1_dT_1));// (dB/dT)_1

// Now let us assume the exit temperature to be 870 K, at this temperature
// T_2 = 870;//[K] - 
// At this temperature
// delta_S = Cp_0*log(T_2/T_1) - P_2*(dB/dT)_2 + P_1*(dB/dT)_1 = 


T_2 = 860;//[K] - Exit temperature
// Therefore at state 2, we have
Tr_2 = T_2/Tc;
B0_2 = 0.083 - 0.422/(Tr_2^(1.6));
B1_2 = 0.139 - 0.172/(Tr_2^(4.2));
// (B*Pc)/(R*Tc) = B0 + w*B1
B_2 = ((B0_2 + w*B1_2)*(R*Tc))/Pc;// [m^(3)/mol] - Second virial coefficient at state 2
dB0_dT_2 = 0.422*1.6*Tc^(1.6)*T_2^(-2.6);// (dB_0/dT)
dB1_dT_2 = 0.172*4.2*Tc^(4.2)*T_2^(-5.2);// (dB_1/dT)
dB_dT_2 = ((R*Tc)/Pc)*((dB0_dT_2) + w*(dB1_dT_2));// (dB/dT)_2

delta_H_s = Cp_0*(T_2 - T_1) + B_2*P_2 -P_2*T_2*(dB_dT_2) - B_1*P_1 + P_1*T_1*(dB_dT_1);//[J/mol] - Enthalpy change

// As no heat exchange is assumed to take place with the surroundings,work transfer is given by
W_1 = - delta_H_s;// [J/mol]

printf(" (1).The exit temperature is %f K\n",T_2);
printf("     The required amount of work is %f J/mol\n\n",W_1);


// (2)
eff = 0.8;// Adiabatic efficiency
delta_H_a = delta_H_s/0.8;// Actual enthalpy change

// Now for calculating the value of T_exit
// delta_H_a = Cp_0*(T_exit - T_1) + B*P_2 -P_2*T_exit*(dB_dT) - B_1*P_1 + P_1*T_1*(dB_dT_1)
// On simplification we get
// 29.114*(T_2 - T_1)*B_2*8*10^(6)-8*10^(6)*T_2*(dB/dT)_2 = 12643.77 

// Let us assume a temperature of say
T = 900;//[K]
fault=10;

while(fault>0.3)
    Tr = T/Tc;
    B0 = 0.083 - 0.422/(Tr^(1.6));
    B1 = 0.139 - 0.172/(Tr^(4.2));
    // (B*Pc)/(R*Tc) = B0 + w*B1
    B = ((B0 + w*B1)*(R*Tc))/Pc;// [m^(3)/mol] - Second virial coefficient at state 2
    dB0_dT = 0.422*1.6*Tc^(1.6)*T^(-2.6);// (dB_0/dT)
    dB1_dT = 0.172*4.2*Tc^(4.2)*T^(-5.2);// (dB_1/dT)
    dB_dT = ((R*Tc)/Pc)*((dB0_dT) + w*(dB1_dT));// (dB/dT)_1
    deff('[y]=f(T_exit)','y = delta_H_a - Cp_0*(T_exit - T_1) + B*P_2 -P_2*T_exit*(dB_dT) - B_1*P_1 + P_1*T_1*(dB_dT_1)');
    T_exit = fsolve(900,f);
    fault=abs(T-T_exit);
    T = T + 0.2;
end
Texit = T;

// As no heat exchange is assumed to take place with the surroundings,work transfer is given by
W_2 = - delta_H_a;// [J/mol]

printf(" (2).The exit temperature is %f K\n",Texit);
printf("     The required amount of work is %f J/mol\n\n",W_2);

//(3)
// Cp_0 = 7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3)
// The entropy change for a gas following the virial equation of state is given by
// delta_S = integrate('Cp_0/T','T',T_1,T_2) - R*log(P_2/P_1) - P_2*(dB/dT)_2 + P_1*(dB/dT)_1 
// For an isentropic process the entropy change is zero and substituting the various values in the above equation we get
// 32.2168*log(T_2) + 0.1922*10^(-2)*T_2 + 0.5274*10^(-5)*T_2^(2) - 1.1976*10^(-9)*T_2^(3)-8*10^(6)*(dB/dT)_2 -216.64 = 0

// Let us assume a temperature of say
T_prime = 700;//[K]
fault1=10;

while(fault1>0.5)
    Tr_prime = T_prime/Tc;
    B0_prime = 0.083 - 0.422/(Tr_prime^(1.6));
    B1_prime = 0.139 - 0.172/(Tr_prime^(4.2));
    // (B*Pc)/(R*Tc) = B0 + w*B1
    B_prime = ((B0_prime + w*B1_prime)*(R*Tc))/Pc;// [m^(3)/mol] - Second virial coefficient at state 2
    dB0_dT_prime = 0.422*1.6*Tc^(1.6)*T_prime^(-2.6);// (dB_0/dT)
    dB1_dT_prime = 0.172*4.2*Tc^(4.2)*T_prime^(-5.2);// (dB_1/dT)
    dB_dT_prime = ((R*Tc)/Pc)*((dB0_dT_prime) + w*(dB1_dT_prime));// (dB/dT)_1
    deff('[y]=f1(T_out)','y = 32.2168*log(T_out) + 0.1922*10^(-2)*T_out + 0.5274*10^(-5)*T_2^(2) - 1.1976*10^(-9)*T_out^(3)-8*10^(6)*dB_dT_prime -216.64');
    T_out = fsolve(10,f1);
    fault1=abs(T_prime-T_out);
    T_prime = T_prime + 0.5;
end
T_out = T_prime;

// Now we have to calculate enthalpy change as W = -delta_H
delta_H_3 = integrate('(7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3))*4.184','T',T_1,T_out) + B_prime*P_2 - P_2*T_out*dB_dT_prime - B_1*P_1 + P_1*T_1*dB_dT_1;//[J/mol]

W_3 = - delta_H_3;// [J/mol]

printf(" (3).The exit temperature is %f K\n",T_out);
printf("     The required amount of work is %f J/mol\n\n",W_3);

//(4)
n = 0.8;// Adiabatic efficiency
delta_H_a_4 = delta_H_3/n;//[J/mol]
W_4 = -delta_H_a_4;//[J/mol]

// Now we have to determine the exit temperature when the enthalpy is delta_H_a_4
// 7.7*4.184*(T_2-T_1) + ((0.04594*4.184*10^(-2))/2)*(T_2^(2)-T_1^(2)) + ((0.2521*4.184*10^(-5))/3)*(T_2^(3)-T_1^(3)) - ((0.8587*4.184*10^(-9))/4)*(T_2^(4)-T_1^   (4)) + B_2*8*10^(6) - 8*10^(6)*T_2*(dB/dT)_2 + 191.7 + 496.81 = delta_H_a_4

// Let us assume a temperature of say
T_prime1 = 700;//[K]
fault2=10;

while(fault2>0.5)
    Tr_prime1 = T_prime1/Tc;
    B0_prime1 = 0.083 - 0.422/(Tr_prime1^(1.6));
    B1_prime1 = 0.139 - 0.172/(Tr_prime1^(4.2));
    // (B*Pc)/(R*Tc) = B0 + w*B1
    B_prime1 = ((B0_prime1 + w*B1_prime1)*(R*Tc))/Pc;// [m^(3)/mol] - Second virial coefficient at state 2
    dB0_dT_prime1 = 0.422*1.6*Tc^(1.6)*T_prime1^(-2.6);// (dB_0/dT)
    dB1_dT_prime1 = 0.172*4.2*Tc^(4.2)*T_prime1^(-5.2);// (dB_1/dT)
    dB_dT_prime1 = ((R*Tc)/Pc)*((dB0_dT_prime1) + w*(dB1_dT_prime1));// (dB/dT)_1
    deff('[y]=f2(T_2)','y = 7.7*4.184*(T_2-T_1) + ((0.04594*4.184*10^(-2))/2)*(T_2^(2)-T_1^(2)) + ((0.2521*4.184*10^(-5))/3)*(T_2^(3)-T_1^(3)) - ((0.8587*4.184*10^(-9))/4)*(T_2^(4)-T_1^(4)) + B_prime1*8*10^(6) - 8*10^(6)*T_2*dB_dT_prime1 + 191.7 + 496.81 - delta_H_a_4');
    T_out1 = fsolve(100,f2);
    fault2=abs(T_prime1-T_out1);
    T_prime1 = T_prime1 + 0.5;
end
T_out1 = T_prime1;

printf(" (4).The exit temperature is %f K\n",T_out1);
printf("     The required amount of work is %f J/mol\n\n",W_4);


