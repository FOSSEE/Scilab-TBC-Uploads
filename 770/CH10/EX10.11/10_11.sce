clear;
clc;
funcprot(0);

//Example - 10.11
//Page number - 348
printf("Example - 10.11 and Page number - 348\n\n");

//Given
Vol = 0.15;//[m^(3)] - Volume of the cylinder
P_1 = 100;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
T_1 = 170;//[K] - Initial temperature
n_withdrawn = 500;//[mol] - Withdrawn number of moles
R = 8.314;//[J/mol*K] - Universal gas constant


//(1)
Y = 1.4;// Coefficient of adiabatic expansion
n_total = (P_1*Vol)/(R*T_1);//[mol] - Total number of moles
n_2 = n_total - n_withdrawn;//[mol] - Left number of moles
V_1 = Vol/n_total;//[m^(3)/mol] - Molar volume at initial state.
// At final state
V_2 = Vol/n_2;//[m^(3)/mol] - Molar volume at final state

// During duscharging  P_1*V_1^(Y) = P_2*V_2^(Y), therefore
P_2_1 = P_1*((V_1/V_2)^(Y));//[Pa] - Final pressure
P_2_1 = P_2_1*10^(-5);//[bar]
T_2_1 = ((P_2_1*10^(5))*V_2)/R;//[K] - Final temperature

printf(" (1).The final temperature %f K\n",T_2_1);
printf("     The final pressure %f bar\n\n",P_2_1);

//(2)
// Cp_0 = 27.2 + 4.2*10^(-3)*T
// For a discharge process entropy per mol of the gas that remains in the cylinder is constant,  delta_S = 0
// Therefore foe one mol of ideal gas   integrate('Cp_0/T','T',T_1,T_2) - R*log(P_2/P_1) = 0
// Since the gas is assumed to be ideal,therefore P_2*Vol = n_2*R*T_2
// P_2 = (n_2*R*T_2)/V_2. Substituting in above equation after simplification we get
// 27.2*log(T_2/T_1) + 4.2*10^(-3)*(T_2 - T_1) - R*log(P_2/P_1)
// f(T) = 18.886*log(T) + 4.2*10^(-3)*T - 92.4
// f(T)_dash = 18.886/T + 4.2*10^(-3)  // Derivative of the above function

// Starting with a temperature of 150 K
T_prime = 150;//[K]
error = 10;
while(error>1)
    f_T = 18.886*log(T_prime) + 4.2*10^(-3)*T_prime - 92.4;
    f_T_dash = 18.886/T_prime + 4.2*10^(-3);
    T_new = T_prime - (f_T/f_T_dash);
    error=abs(T_prime - T_new);
    T_prime = T_new;
end

T_2_2 = T_prime;//[K] - Final temperature
P_2_2 = ((n_2*R*T_2_2)/Vol)*10^(-5);//[bar] - Final pressure

printf(" (2).The final temperature %f K\n",T_2_2);
printf("     The final pressure %f bar\n\n",P_2_2);

//(3)
Tc = 126.2;//[K] - Critical temperature of nitrogen
Pc = 34.0;//[bar] - Critical pressure of nitrogen
Pc = Pc*10^(5);//[Pa]
w = 0.038;// Acentric factor

// Virial equation of state, Z = 1 + (B*P)/(R*T)
// S_R = -P*(dB/dT)

dB0_dT = 0.422*1.6*Tc^(1.6)*T_1^(-2.6);// (dB_0/dT) at state 1
dB1_dT = 0.172*4.2*Tc^(4.2)*T_1^(-5.2);// (dB_1/dT) at state 1
dB_dT = ((R*Tc)/Pc)*((dB0_dT) + w*(dB1_dT));// (dB/dT) at state 1
// The residual entropy at the initial state is given by 
S_R_1 = -P_1*(dB_dT);//[J/mol-K]

// Now let us calculate molar volume at initial state
Tr = T_1/Tc;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]

V_1_3 = B + (R*T_1)/P_1;//[m^(3)/mol]
// Therefore number of moles in the initial state is
n_1_3 = Vol/V_1_3;//[mol]
// Therefore final number of moles is
n_2_3 = n_1_3 - n_withdrawn;

// Therefore molar volume at final state is
V_2_3 = Vol/n_2_3;//[m^(3)/mol]

// Now let us determine the relation between pressure and temperature in the final state
// P_2_3 = (R*T_2_3)/(V_2_3 - B_2)
//delta_S = 0, thus delta_S_ig + delta_S_R = 0
delta_S_R = - S_R_1;
// integrate('Cp_0/T','T',T_1,T_2) - R*log(P_2/P_1) - P_2*(dB/dT)_2 + S_R_1
// On simplification,
// delta_S = 27.2*(log(T_2_prime/T_1)) + 4.2*10^(-3)*(T_2_prime - T_1) - R*(log(P_2_3/P_1)) - P_2_3*(dB_dT_3) + delta_S_R
// Starting with a temperature of 135 K

T_2_prime = 135;//[K]
delta = 0.1;
error = 10;
while(error>0.01)
    T_r = T_2_prime/Tc;// Reduced temperature
    B_0_3 = 0.083-(0.422/(T_r)^(1.6));
    B_1_3 = 0.139-(0.172/(T_r)^(4.2));
    B_3 = ((B_0_3+(w*B_1_3))*(R*Tc))/Pc;//[m^(3)/mol]
    dB0_dT_3 = 0.422*1.6*Tc^(1.6)*T_2_prime^(-2.6);// (dB_0/dT)
    dB1_dT_3 = 0.172*4.2*Tc^(4.2)*T_2_prime^(-5.2);// (dB_1/dT)
    dB_dT_3 = ((R*Tc)/Pc)*((dB0_dT_3) + w*(dB1_dT_3));// (dB/dT)
    P_2_3 = (R*T_2_prime)/(V_2_3 - B_3);
    delta_S = 27.2*(log(T_2_prime/T_1)) + 4.2*10^(-3)*(T_2_prime - T_1) - R*(log(P_2_3/P_1)) - P_2_3*(dB_dT_3) + delta_S_R;
    T_new = T_2_prime + delta;
    error=abs(delta_S);
    T_2_prime = T_new;
end

T_2_3 = T_2_prime;//[K] - Final temperature
// Therefore at T_2_3
P_2_3 = P_2_3*10^(-5);//[bar] - Final pressure

printf(" (3).The final temperature %f K\n",T_2_3);
printf("     The final pressure %f bar\n\n",P_2_3);

