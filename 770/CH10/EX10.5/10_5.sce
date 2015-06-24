clear;
clc;

//Example - 10.5
//Page number - 338
printf("Example - 10.5 and Page number - 338\n\n");

//Given
T_1 = 360;//[K] - Initial temperature
P_1 = 10;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
Tc = 408.1;//[K] - Critical temperature
Pc = 36.48;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]
w = 0.181;
R = 8.314;//[J/mol*K] - Universal gas constant
Cv_0 = 106.0;//[J/mol-K]

// At 360 K
Tr = T_1/Tc;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B = ((B_0 + (w*B_1))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient
dB0_dT = 0.422*1.6*Tc^(1.6)*T_1^(-2.6);// (dB_0/dT)
dB1_dT = 0.172*4.2*Tc^(4.2)*T_1^(-5.2);// (dB_1/dT)
dB_dT = ((R*Tc)/(Pc))*(dB0_dT + w*dB1_dT);// dB/dT

// Since system is adiabatic therefore no heat exchange will take place , q = 0
// and expansion takes place into vacuum,threfore W = 0
// From first law delta_U = 0. If the gas would have followed ideal gas equation of state the final temperature would have been the same as initial as delta_U = 0
// But for real gases
// delta_U = delta_U_ig + delta_U_R
// delta_U = delta_U_ig + U_2_R - U_1_R
// For equation of state Z = 1 + (B*P)/(R*T)
// V = B + (R*T)/P
// U_R = -P*T*(dB/dT)

// delta_U_ig = Cv_0*(T_2 - T_1)
// delta_U = Cv_0*(T_2 - T_1) - P_2*T_2*(dB/dT)_2 + P_1*T_1*(dB/dT)_1

// At state 1
V_1 = B + (R*T_1)/P_1;//[m^(3)/mol] - Molar volume
// At state 1
V_2 = 10*V_1;//[m^(3)/mol] - Molar volume

// From the equation delta_U = 0
// Cv_0*(T_2 - T_1) - ((R*T_2)/(V_2 - B_2))*T_2*(dB/dT)_2 + P_1*T_1*(dB/dT)_1 = 0

// Now we need to solve the above equation to get the value of T_2
// In above equation the magnitude of second term is much smaller as compared to the third term because the molar volume has become 10 times
// So neglecting second term, we have
// Cv_0*(T_2 - T_1) + P_1*T_1*(dB/dT)_1 = 0
T_2 = -(P_1*T_1*(dB_dT))/Cv_0 + T_1;//[K]

// For exact calculation of final temperature, let us start with a temperature, say
T = 350;

fault = 10;
while(fault>0.007)
    Tr_prime = T/Tc;// Reduced temperature
    B_0_prime = 0.083-(0.422/(Tr_prime)^(1.6));
    B_1_prime = 0.139-(0.172/(Tr_prime)^(4.2));
    //We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
    B_prime = ((B_0_prime + (w*B_1_prime))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient
    dB0_dT_prime = 0.422*1.6*Tc^(1.6)*T_2^(-2.6);// (dB_0/dT)
    dB1_dT_prime = 0.172*4.2*Tc^(4.2)*T_2^(-5.2);// (dB_1/dT)
    dB_dT_prime = ((R*Tc)/(Pc))*(dB0_dT_prime + w*dB1_dT_prime);// dB/dT
    deff('[y]=f(T)','y= 106*(T-T_1)+972.72-((R*T^(2))/(V_2-B_prime))*dB_dT_prime');
    T_prime = fsolve(0.15,f);
    fault=abs(T-T_prime);
    T = T + 0.001;
end

printf(" The final temperature is %f K\n",T);

