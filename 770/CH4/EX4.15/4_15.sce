clear;
clc;

//Example - 4.15
//Page number - 168
printf("Example - 4.15 and Page number - 168\n\n");

//Given
P_1 = 3;//[bar] - Initial pressure
T_1 = 150 + 273.15;//[K] - Initial temperature
Vel_1 = 90;//[m/s] - Initial velocity
P_2 = 1;//[bar] - Final pressure
eff = 0.95;// Adiabatic effciciency of the nozzle
R = 8.314;//[J/mol*-] - Universal gas constant

// At 3 bar and 150 C, from steam table
S_1 = 7.0778;//[kJ/kg-K]
H_1 = 2761.0;//[kJ/kg]
S_2 = S_1;// 

// At 1 bar saturated
S_liq = 1.3026;//[kJ/kg-K]
S_vap = 7.3594;//[kJ/kg-K]
H_liq = 417.46;//[kJ/kg]
H_vap = 2675.5;//[kJ/kg]
// The dryness factor of exit steam can be determined as
x = (S_1-S_liq)/(S_vap-S_liq);
// Enthalpy of exit steam is given by 
H_2 = H_liq*(1-x) + x*H_vap;//[kJ/kg]
delta_H_s = H_2 - H_1;//[kJ/kg] - Enthalpy change
delta_H_a = eff*delta_H_s;//[kJ/kg]

// Assuming no heat exchange with surroundings and since no work is done
// delta_H + (delta_V^(2))/2 = 0
delta_Vel_square = 2*(-delta_H_a)*1000;//[m^(2)/s^(2)]
Vel_2 = (delta_Vel_square + Vel_1^(2))^(1/2);//[m/s]

printf(" (1).The final velocity (when fluid is steam) is %f m/s\n\n",Vel_2);

// (2)
Y = 1.4;// Index of expansion
Cp_0 = (Y*R)/(Y-1);//[J/mol-K] - Specific heat capacity at constant pressure
// The final temperature has to be determined such that entropy change is zero. Under isentropic conditions
// P_1^(1-Y)*T_1^(Y) = P_2^(1-Y)*T_2^(Y)
T_2 = T_1*(P_1/P_2)^((1-Y)/Y);//[K]
delta_H_s_2 = Cp_0*(T_2 - T_1);//[J/mol]
delta_H_a_2 = eff*delta_H_s_2;//[J/mol]
delta_H_a_2 = (delta_H_a_2*1000)/28.84;//[J/kg]

delta_Vel_square_2 = 2*(-delta_H_a_2);//[m^(2)/s^(2)]
Vel_2_2 = (delta_Vel_square_2 + Vel_1^(2))^(1/2);//[m/s]

printf(" (2).The final velocity (when fluid is air which behaves as an ideal gas) is %f m/s\n\n",Vel_2_2);




