clear;
clc;

//Example - 4.14
//Page number - 166
printf("Example - 4.14 and Page number - 166\n\n");

//Given
P_1 = 6;//[MPa] - Initial pressure
T_1 = 500 + 273.15;//[K] - Initial temperature
P_2 = 10;//[kPa] - Final pressure
out_qlty = 0.9;// Output quality

// At 6 MPa and 500 C, from steam table as reported in the book
H_1 = 3422.2;//[kJ/kg]
S_1 = 6.8803;//[kJ/kg-K]
S_2 = S_1;// Adiabatic reversible conditions
// At 10 kPa saturated
H_liq = 191.83;//[kJ/kg]
H_vap = 2584.7;//[kJ/kg]
S_liq = 0.6493;//[kJ/kg-K]
S_vap = 8.1502;//[kJ/kg-K]

// The dryness fraction is given by 
x = (S_1-S_liq)/(S_vap-S_liq);

// Now the exit enthalpy is given by
H_2 = H_liq*(1-x) + x*H_vap;//[kJ/kg]
W = - (H_2 - H_1);//[kJ/kg] - Under isentropic conditions

// We know that, delta_S = q/T_b + S_gen
// Since delta_S = 0, therefore under isentropic conditions
S_gen = 0;//[kJ/kg-K]

// Now for output quality 0.9
H_2_a = H_liq*(1-out_qlty) + out_qlty*H_vap;//[kJ/kg]
S_2_a = S_liq*(1-out_qlty) + out_qlty*S_vap;//[kJ/kg]
W_a = - (H_2_a - H_1);//[kJ/kg]
delta_S_a = S_2_a - S_1;//[kJ/kg-k]
// Again,  delta_S = q/T_b + S_gen
// Since q = 0, therefore under isentropic conditions
S_gen_a = delta_S_a;//[kJ/kg-K
// Now efficiency is given by eff = delta_H_a/delta_H_s
eff = W_a/W;

printf(" For output quality = 0.9\n");
printf(" The work output per unit mass is %f kJ/kg\n",W_a);
printf(" The entropy generation is given by S_gen = %f kJ/kg-K\n",S_gen_a);
printf(" The efficiency with respect to reversible adiabatic case is given by eff = %f\n\n",eff);

// Now for output quality 1
out_qlty_1 = 1;
H_2_a_1 = H_liq*(1-out_qlty_1) + out_qlty_1*H_vap;//[kJ/kg]
S_2_a_1 = S_liq*(1-out_qlty_1) + out_qlty_1*S_vap;//[kJ/kg]
W_a_1 = - (H_2_a_1 - H_1);//[kJ/kg]
delta_S_a_1 = S_2_a_1 - S_1;//[kJ/kg-k]
// Again,  delta_S = q/T_b + S_gen
// Since q = 0, therefore under isentropic conditions
S_gen_a_1 = delta_S_a_1;//[kJ/kg-K
// Now efficiency is given by eff = delta_H_a/delta_H_s
eff_1 = W_a_1/W;

printf(" For output quality = 1.0\n");
printf(" The work output per unit mass is %f kJ/kg\n",W_a_1);
printf(" The entropy generation is given by S_gen = %f kJ/kg-K\n",S_gen_a_1);
printf(" The efficiency with respect to reversible adiabatic case is given by eff = %f\n",eff_1);

