clear;
//clc();

// Example 9.9
// Page: 234
printf("Example-9.9  Page no.-234\n\n");

//***Data***//

T = 85.3+273.15;//[K] Temperature
P = 1;//[atm] Pressure of the mixture
R = 8.314;//[(Pa*m(3)/(K*mol))]
R_1 = 0.08206;//[(L*atm)/(mol*K)]
y_i = 0.1238;// mole fraction of the ethanol in the vapor phase
y_j = (1-y_i);// mole fraction of the water vapor in the vapor phase

// From the table A.1( table 417), the properties of water and ethanol are given as 
// Critical temperatures are 
T_c_ii = 513.9;//[K] Critical temperature of the ethanol
T_c_jj = 647.1;//[K] Criatical temperature of water

// Critical pressure are 
P_c_ii = 61.48;//[bar] Critical pressure of ethanol 
P_c_jj = 220.55;//[bar] Critical pressure of water

// Acccentric factor
w_ii = 0.645;// accentric factor of the ethanol 
w_jj = 0.345;// accentric factor of the water

// Compressibility factor are
z_c_ii = 0.24;// compressibility factor of ethanol
z_c_jj = 0.229;// compressibility factor of the water

// Critical volume are given by 
V_c_ii = z_c_ii*R*T_c_ii/(P_c_ii*100000)*10^(6);// critical volume the ethanol
V_c_jj = z_c_jj*R*T_c_jj/(P_c_jj*100000)*10^(6);// critical volume the ethanol

// Now
// for k_ij = 0.0
T_c_ij_0 = (T_c_ii*T_c_jj)^(1/2);//[K]
w_ij = (w_ii + w_jj)/2;
z_c_ij = (z_c_ii + z_c_jj)/2;
V_c_ij = ( (V_c_ii^(1/3) + V_c_jj^(1/3))/2)^(3);
P_c_ij_0 = (z_c_ij*R*T_c_ij_0)/(V_c_ij/10^(6))/10^(5);//[bar]

// again for k_ij = 0.01
T_c_ij_1 = (T_c_ii*T_c_jj)^(1/2)*(1-0.01);//[K]
P_c_ij_1 = (z_c_ij*R*T_c_ij_1)/(V_c_ij/10^(6))/10^(5);//[bar]

// Now 
T_r_ii = T/T_c_ii;
T_r_jj = T/T_c_jj;
T_r_ij_0 = T/T_c_ij_0;
T_r_ij_1 = T/T_c_ij_1;

// and
P_r_ii = P/P_c_ii;
P_r_jj = P/P_c_jj;
P_r_ij_0 = P/P_c_ij_0;
P_r_ij_1 = P/P_c_ij_1;

// Now we  will calculate f(T_r) for each component and mixture
f_Tr_ii = ( 0.083 - 0.422/T_r_ii^(1.6) ) + w_ii*( 0.139 - 0.172/T_r_ii^(4.2));
f_Tr_jj = ( 0.083 - 0.422/T_r_jj^(1.6) ) + w_jj*( 0.139 - 0.172/T_r_jj^(4.2));
f_Tr_ij0 = ( 0.083 - 0.422/T_r_ij_0^(1.6) ) + w_ij*( 0.139 - 0.172/T_r_ij_0^(4.2));
f_Tr_ij1 = ( 0.083 - 0.422/T_r_ij_1^(1.6) ) + w_ij*( 0.139 - 0.172/T_r_ij_1^(4.2));

// Let us define A = (P_r*f(T_r)/T_r) , so
A_ii = P_r_ii*f_Tr_ii/T_r_ii;
A_jj = P_r_jj*f_Tr_jj/T_r_jj;

// We are given
v_ii = 0.975;
v_jj = 0.986;

// Now,
B_ii = ( f_Tr_ii*R*T_c_ii/P_c_ii)*(10^(3)/10^(5));//[L/mol]
B_jj = ( f_Tr_jj*R*T_c_jj/P_c_jj)*(10^(3)/10^(5));//[L/mol]
B_ij0 = ( f_Tr_ij0*R*T_c_ij_0/P_c_ij_0)*(10^(3)/10^(5));//[L/mol]
B_ij1 = ( f_Tr_ij1*R*T_c_ij_1/P_c_ij_1)*(10^(3)/10^(5));//[L/mol]

// now we will calculate 'delta'
delta_ij0 = 2*B_ij0 - B_ii - B_jj;//[L/mol]
delta_ij1 = 2*B_ij1 - B_ii - B_jj;//[L/mol]

// We have 
// b_a = B_aa + y_b^(2)*delta    and   b_b = B_bb + y_a^(2)*delta
// so,
b_ethanol0 = B_ii + y_j^(2)*delta_ij0;//[L/mol]
b_water0 = B_jj + y_i^(2)*delta_ij0;//[L/mol]
b_ethanol1 = B_ii + y_j^(2)*delta_ij1;//[L/mol]
b_water1 = B_jj + y_i^(2)*delta_ij1;//[L/mol]

// Now 
// phi_i = exp(b_i*P/(R*T))
// So,
phi_ethanol0 = exp((b_ethanol0*P)/(R_1*T));
phi_water0 = exp((b_water0*P)/(R_1*T));
phi_ethanol1 = exp((b_ethanol1*P)/(R_1*T));
phi_water1 = exp((b_water1*P)/(R_1*T));

// and
// Y_i = phi_i/v_i
// So,
Y_ethanol0 = phi_ethanol0/v_ii;
Y_water0 = phi_water0/v_jj;
Y_ethanol1 = phi_ethanol1/v_ii;
Y_water1 = phi_water1/v_jj;

printf(" The results are summarize in the following table\n\n");
printf("   Property \t\t\t Mix, ij, Assuming k_ij = 0.0 \t\t\t  Mix, ij, Assuming k_ij = 0.01\n");
printf("  phi_ethanol \t\t\t\t %f \t\t\t\t\t %f\n ",phi_ethanol0,phi_ethanol1);
printf(" phi_water   \t\t\t\t %f \t\t\t\t\t %f \n",phi_water0,phi_water1);
printf("  Y_ethanol   \t\t\t\t %f \t\t\t\t\t %f \n",Y_ethanol0,Y_ethanol1);
printf("  Y_water   \t\t\t\t %f \t\t\t\t\t %f \n\n",Y_water0,Y_water1);
printf(" Value of ''v'' for ethanol is %f\n",v_ii);
printf(" Value of ''v'' water is %f",v_jj);
