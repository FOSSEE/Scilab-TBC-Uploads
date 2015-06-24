clear;
clc;

//Example - 4.11
//Page number - 162
printf("Example - 4.11 and Page number - 162\n\n");

//Given
P_1 = 1;//[MPa] - Initial pressure
T_1 = 200 + 273.15;//[K] - Initial temperature
P_2 = 8;//[MPa] - Final pressure
Y = 1.4;// Index of expansion of gas

// At state 1 (1 MPa and 200 C) from steam table as reported in the book
H_1 = 2827.9;//[kJ/kg]
S_1 = 6.694;//[kJ/kg]
// At state 2 (8 MPa)
S_2 = S_1;// Isentropic process
// From steam table at 8 MPa and 450 C
S_21 = 6.5551;//[kJ/kg-K]
// From steam table at 8 MPa and 500 C
S_22 = 6.7240;//[kJ/kg-K]
// Therefore temperature at which entropy of steam is 6.694 kJ/kg-K is given by
T_2 = 450 + (500-450)/(S_22-S_21)*(S_2-S_21);//[C]
T_2 = T_2 + 273.15;//[K]

// Enthalpy of steam at 8 MPa and 450 C from steam table as reported in the book 
H_21 = 3272.0;//[kJ/kg]
// And at 8 MPA and 500 C
H_22 = 3398.3;//[kJ/kg]
// Therefore enthalpy of steam at 8 MPa and T_2 
H_2 = H_21 + ((H_22-H_21)/(500-450))*((T_2-273.15) - 450); 
// Work done is given by 
// W = - delta_H_s
W = - (H_2 - H_1);//[J/g]
W = W*18.015;//[J/mol]
delta_H_s = - W;

printf(" (1).The exit temperature of steam is %f K\n",T_2);
printf("     The required work is %f J/mol\n\n",W);

//(2)
eff = 0.8;// Adiabatic efficiency
// delta_H_s/delta_H_a = 0.8
delta_H_a = delta_H_s/eff;//[J/mol] - Actual enthalpy change
// Therefore actual work done 
W_a = - delta_H_a;//[J/mol]
// Enthalpy at actual exit conditions is 
H_2_a = H_1 + delta_H_a/18.015;//[kJ/kg]

// Enthalpy of steam at 8 MPa and 500 C from steam table as reported in the book 
H_21_a = 3398.3;//[kJ/kg]
// And at 8 MPA and 550 C
H_22_a = 3521.0;//[kJ/kg]
// Therefore temperature at H_22_a is given by
T_2_a = 500 + ((550-500)*(H_2_a - H_21_a))/(H_22_a - H_21_a);//[C]
T_2_a = T_2_a + 273.15;//[K]

printf(" (2).The exit temperature of steam is %f K\n",T_2_a);
printf("     The required work is %f J/mol\n\n",W_a);

