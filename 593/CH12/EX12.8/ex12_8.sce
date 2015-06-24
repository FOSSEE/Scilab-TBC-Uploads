clear;
//clc();

// Example 12.8
// Page: 330
printf("Example-12.8  Page no.-330\n\n");

//***Data***//

T1 = 273.15+25;//[K]
T2 = 273.15+400;//[K]
R = 8.314;//[J/(mol*K)]

// Using the table A.8, we have
// Gibb's free energy of the various species at 298.15 K are
g0_NH3 = -16.5;//[kJ/mol]
g0_N2 = 0;//[kJ/mol]
g0_H2 = 0;//[kJ/mol]

// We have the reaction as 
// 0.5N2 + 1.5H2 = NH3

// So, Gibb's free energy change in the reaction is given as 
delta_g_0 = g0_NH3 - 0.5*g0_N2 - 1.5*g0_H2;//[kJ/mol]

// and
K_1 = exp(-delta_g_0*1000/(R*T1));// Equilibrium constant of the reaction at temperature 298.15 K

// Similarly enthalpy of the various species are 
h0_NH3 = -46.1;//[kJ/mol]
h0_N2 = 0;//[kJ/mol]
h0_H2 = 0;//[kJ/mol]

// So, enthalpy change of the reaction is given as 
del_h_1 = h0_NH3 - 0.5*h0_N2 - 1.5*h0_H2;//[kJ/mol]

// Now, from Table 12.3( page 332 )
a_NH3 = 3.578;
a_H2 = 3.249;
a_N2 = 3.280;
b_NH3 = 3.020*10^(-3);//[1/K]
b_H2 = 0.422*10^(-3);
b_N2 = 0.593*10^(-3);
c_NH3 = 0;//[1/K^(2)]
c_H2 = 0;//[1/K^(2)]
c_N2 = 0;//[1/K^(2)]
d_NH3 = -0.186*10^(5);//[K^(2)]
d_H2 = 0.083*10^(5);//[K^(2)]
d_N2 = 0.040*10^(5);//[K^(2)]

// So,
del_a = a_NH3 - 0.5*a_N2 - 1.5*a_H2;
del_b = b_NH3 - 0.5*b_N2 - 1.5*b_H2;
del_c = c_NH3 - 0.5*c_N2 - 1.5*c_H2;
del_d = d_NH3 - 0.5*d_N2 - 1.5*d_H2;

// Now, enthalpy change of the reaction at any other temparature is given by
//  del_h = del_h_1 + R*( integrate( del_a + del_b*T + del_c*T^(2) + del_d/T^(2) )*dT)  with lower limit 'T_1' and upper limit 'T'
// Integrating and putting the limits, we have
//  del_h = del_h_1 + R*( del_a*T + del_b*T^(2)/2 + del_c*T^(3)/3 - del_d/T) - R*( del_a*T_1 + del_b*T_1^(2)/2 + del_c*T_1^(3)/3 - del_d/T_1)
// let
I = R*( del_a*T1 + del_b*T1^(2)/2 + del_c*T1^(3)/3 - del_d/T1);//[J/mol]

// From equation 12.28 and above relations we have
// log(K_2/K_1) = 1/R*( integrate( del_h_1 - I + R*(del_a*T + del_b*T^(2)/2 + del_c*T^(3)/3 - del_d/T))/T^(2)*dT)   with limits T1 and T2
// Let log(K_2/K_1) = X, So,
X = (1/R)*integrate('( del_h_1*1000 - I + R*(del_a*T + del_b*T^(2)/2 + del_c*T^(3)/3 - del_d/T))/T^(2)','T',T1,T2);

// So, 
K_2 = K_1*exp(X);

printf(" Equilibrium constants for the formation of ammonia from hydrogen and nitrogen are \n\n");
printf(" K = %0.0f at temperature 25 deg C\n\n",K_1);
printf(" K = %f at temperature 400 deg C\n",K_2);
