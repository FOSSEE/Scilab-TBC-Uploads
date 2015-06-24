clear;
clc;

//Example - 5.3
//Page number - 190
printf("Example - 5.3 and Page number - 190\n\n")

//Given
P_1 = 15;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
T_1 = 300+273.15;//[K] - Initial temperature
T_0 = 298.15;//[K]
T_R = 1200;//[K] - Reservoir temerature.
P_0 = 1;//[bar]
P_0 = P_0*10^(5);//[Pa]
n = 1;//[mol] - No of moles
R = 8.314;//[J/mol*K]
Y = 1.4;// - Ratio of heat capacities.
Cv_0 = R/(Y-1);//[J/mol-K] - Heat capacity at constant volume
Cp_0 = Cv_0 + R;//[J/mol-K] - Heat capacity at constant pressure

//(1)
//V_2 = 2*V_1 and since pressure is constant,we get (V_1/T_1) = (2*V_1/T_1), or, T_2 = 2*T_1.
T_2 = 2*T_1;//[K]
W = P_1*(((R*T_2)/P_1)-((R*T_1)/P_1));//[J/mol] - Actual work done
delta_U = Cv_0*(T_2-T_1);//[J/mol] - Change in internal energy.
q = W + delta_U;//[J/mol] - Heat change
//Now the availability change is given by, (phi_1 - phi_2) = U_1 - U_2 + P_0*(V_1 - V_2) - T_0*(S_1 - S_2) + q*(1-(T_0/T_R))
//delta_S = Cp_0*log(T_2/T_1) - R*log(P_2/P_1), and P_1 = P_2, Therefore
delta_S = Cp_0*log(T_2/T_1);;//[J/mol-K] - Entropy change.
//Substituting expressions for delta_phi calculation. Decrease in availability is given by,
delta_phi = (-delta_U) + P_0*(((R*T_1)/P_1)-((R*T_2)/P_1)) - T_0*(-delta_S) + q*(1-(T_0/T_R));//[J/mol]
//Actual work done is given by, W = P_1*(V2-V1)
//Work done to displace the atmosphere is given by, W = P_0*(V_2-V_1)
//Therefore, W_use = (P_1*(V2-V1) - P_0*(V2-V1))
W_use = (P_1-P_0)*(((R*T_2)/P_1)-((R*T_1)/P_1));//[J/mol] - useful work done
W_rev_use = delta_phi;// reversible useful work done
//Irreversibility is given by,
i = W_rev_use - W_use;//[J/mol]
printf(" (a).The ireversibility value is %f J/mol\n\n",i);

//The irreversibility can also be calculated using 
// i = T_0*S_gen
//S_gen = delta_S - (q/T_R)

//(b)
//V2 = 2*V_1 and therefore T_2 = 2*T_1, as P_2 = P_1
//Actual work done is same as before
//Let work done on stirrer be W_stir. Thus net work done by the system is W - W_stir.Fron energy balance we get,
W_stir = W + delta_U;
//Initially the exergy is due to that of the system at state 1 and stirrer work,'W_stir' and finally we have the exergy due to system at state 2,the stirrer work  is spent,thus availability is given by
delta_phi_b = (-delta_U) + P_0*(((R*T_1)/P_1)-((R*T_2)/P_1)) - T_0*(-delta_S) + W_stir;//[J/mol]
W_rev_use_b = delta_phi_b;// reversible useful work done
W_use_b = W_use;// useful work done
//Now the irreversibility is given by,
i_b = W_rev_use_b - W_use_b;//[J/mol]
printf(" (b).The ireversibility value is %f J/mol\n\n",i_b);

//The irreversibility can also be calculated using 
// i_b = T_0*S_gen
//S_gen = delta_S - (q/T_R) and here, q = 0

//(c)
P_2_c = 10;//[bar] - Final pressure, (Given)
P_2_c = P_2_c*10^(5);//[Pa]
//(P_1^(1-Y))*(T_1^(Y)) = (P_2^(1-Y))*(T_2^(Y))
T_2_c = T_1*((P_1/P_2_c)^((1-Y)/Y));//[K]
//Work done is given by, W = -delta_U = -Cv_0*(T_2_c - T_1)
W_c = -Cv_0*(T_2_c - T_1);//[J/mol]
//The final molar volume is calculated using P_1*V_1^(Y) = P_2*V_2^(Y)
//V_2 = V_1*((P_1/P_2_c)^(1/Y))
V_1 = (R*T_1)/P_1;//[cubic metre/mol] - Initial molar volume
V_2 = V_1*((P_1/P_2_c)^(1/Y));//[cubic metre/mol] - Final molar volume
//Now let us determine the work done to displace the atmosphere,
W_atm_c = P_0*(V_2 - V_1);//[J/mol] - work done to displace the atmosphere
//Thus useful work is given by,
W_use_c = W - W_atm_c;//[J/mol] - useful work done
//Here delta_S = 0,for reversible adiabatic process.Therefore,
W_rev_use_c = W_use_c;
//Now finally the irreversibility is given by,
i_c = W_rev_use_c - W_use_c;//[J/mol]
printf(" (c).The ireversibility value is %f J/mol\n\n",i_c);

//(d)
//Here temperature is constant,but V_2 = 2*V_1, therefore P_2 = P_1/2
V_2_d = 2*V_1;
P_2_d = P_1/2;
//Under isothermal conditions work done is
W_d = R*T_1*log(V_2_d/V_1);//[J/mol]
//Work done to displace the atmosphere is given by,
W_atm_d = P_0*(V_2_d - V_1);//[J/mol] - work done to displace the atmosphere
//Thus useful work is given by,
W_use_d = W_d - W_atm_d;//[J/mol] - useful work done
delta_U_d = 0;//isothermal conditions
q_d = W_d;// since, delta_U_d = 0
//delta_S_d = Cp_0*log(T_2/T_1) - R*log(P_2/P_1), and T_1 = T_2, Therefore
delta_S_d = -R*log(P_2_d/P_1);//[J/mol-K] - Entropy change
//The reversible useful work is given by,
W_rev_use_d = P_0*(V_1 - V_2_d) - T_0*(-delta_S_d) + q_d*(1-(T_0/T_R));//[J/mol] - Reversible useful work done.
//The irreversibility is given by,
i_d = W_rev_use_d - W_use_d;//[J/mol]
printf(" (d).The ireversibility value is %f J/mol\n\n",i_d);

//(e)
P_2_e = 10;//[bar] - Final pressure, (Given)
P_2_e = P_2_e*10^(5);//[Pa]
//During the expansion of an ideal gas in into vacuum the temperature of the gas remains the same,
T_2_e = T_1;// Final temperature
//Since boundary of the system is fixed so no net work is done, W = 0 and thus
W_use_e = 0;//[J/mol] - Useful work done
//Here, delta_U = 0,as temperature is same and
//(V_1-V_2) = 0,as for overall system there is no change in volume
delta_S_e = - R*log(P_2_e/P_1);//[J/mol-K] - Entropy change
//The reversible useful work is given by,
W_rev_use_e =  - T_0*(-delta_S_e);//[J/mol] - Reversible useful work done.
//The irreversibility is given by,
i_e = W_rev_use_e - W_use_e;//[J/mol]
printf(" (e).The ireversibility value is %f J/mol\n\n",i_e);



