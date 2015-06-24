clear;
clc;

//Example - 5.5
//Page number - 197
printf("Example - 5.5 and Page number - 197\n\n")

//Given
T_1 = 700+273.15;//[K] - Initial temperature.
P_1 = 12;//[MPa] - Initial pressure
P_2 = 0.6;//[MPa] - Final pressure
//At 12 MPa and 700 C,
H_1 = 3858.4;//[kJ/kg] - initial enthalpy
S_1 = 7.0757;//[kJ/kg-K] - initial entropy

//At 0.6 MPa and 200 C,
H_2 = 2850.1;//[kJ/kg]
S_2 = 6.9673;//[kJ/kg-K]

//At 0.6 MPa and 250 C,
H_3 = 2957.2;//[kJ/kg]
S_3 = 7.1824;//[kJ/kg-K]

//At 0.6 MPa and 300 C,
H_4 = 3061.6;//[kJ/kg]
S_4 = 7.3732;//[kJ/kg-K]

//(1)
//In the case of ideal turbine the entropy change does not take place,therefore the exit conditions are
P_exit = P_2;//[MPa] - exit pressure
T_exit = ((S_1 - S_2)/(S_3 - S_2))*(250 - 200) + 200;//[C] - exit temperature
H_exit = ((S_1 - S_2)/(S_3 - S_2))*(H_3 - H_2) + H_2;//[kJ/kg] - exit enthalpy

//Snce it is a flow pocess,therfore
//W_rev = H_1 - H_exit - T_0*(S_1 - S_2)
//As S_1 = S_2,the above equation becomes
W_rev_1 = H_1 - H_exit;//[kJ/kg] - reversible work done

//From the first law the actual work done can be calculated using, delta_H = q - W
//Since the turbine does not exchange heat,therefore W = - delta_H.
W_1 = - (H_exit - H_1);//[kJ/kg]

printf(" (1).The reversible work done is %f kJ/kg\n",W_1);
printf("     And since the maximum work is same as the actual work,therefore irreversibility is zero\n\n");

//(2)
//Given
T_0 = 298.15;//[K] - Environment temperature
P_0 = 1;//[atm] - Environment pressure
adi_eff = 0.88;//adiabatc efficiency

//(H_1 - H_exit_actual)/(H_1 - H_exit) = 0.88, therefore
H_exit_actual = H_1 - 0.88*(H_1 - H_exit);// - Actual exit enthalpy

//Now two properties i.e pressure = 0.6 MPa and enthalpy = H_exit_actual is fixed at the exit. The exit temperature is given by,
T_exit_actual = ((H_exit_actual - H_3)/(H_4 - H_3))*(300 - 250) + 250;//[C]
S_exit_actual = ((H_exit_actual - H_3)/(H_4 - H_3))*(S_4 - S_3) + S_3;//[kJ/kg]

//Now reversible work done is given by,
W_rev_2 = H_1 - H_exit_actual - T_0*(S_1 - S_exit_actual);//[kJ/kg]
printf(" (2).The reversible work done is %f kJ/kg\n",W_rev_2);

//The actual work is given by the first law,
W_2 = H_1 - H_exit_actual;//[kJ/kg] - Actual work done
i = W_rev_2 - W_2;//[kJ/kg] - irreversibility
printf("     The value of irreversibility is %f kJ/kg\n",i);

//The irreversibility can also be determined using
// i = T_0*S_gen, and S_gen is given by
// S_gen = (q/T_R) - delta_S

//The second law efficiency of the turbine is actual work done divided by reversible work,therefore
sec_eff = W_2/W_rev_2;
printf("     The second law efficiency of the turbine is %f\n",sec_eff);
