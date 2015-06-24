clear;
clc;

//Example - 4.13
//Page number - 164
printf("Example - 4.13 and Page number - 164\n\n");

//Given
P_1 = 10;//[bar] - Initial pressure
T_1 = 500 + 273.15;//[K] - Initial temperature
P_2 = 2;//[psia] - Final pressure
P_2 = P_2/14.5;//[bar]
P_2 = P_2*10^(2);//[kPa]
m = 1.8;//[kg/s] - Mass flux
eff = 0.8;// Efficiency

// At state 1, from steam table
H_1 = 3478.5;//[kJ/kg]
S_1 = 7.7622;//[kJ/kg-K]
S_2 = S_1;// Adiabatic process

// From saturated steam table at 10 kPa
S_liq_1 = 0.6493;//[kJ/kg-K]
S_vap_1 = 8.1502;//[kJ/kg-K]
// From saturated steam table at 15 kPa
S_liq_2 = 0.7549;//[kJ/kg-K]
S_vap_2 = 8.0085;//[kJ/kg-K]
// Threfore at P_2 
S_liq = S_liq_1 + ((S_liq_2-S_liq_1)/(15-10))*(P_2-10);
S_vap = S_vap_1 + ((S_vap_2-S_vap_1)/(15-10))*(P_2-10);

// The dryness fraction at exit state is
x_2 = (S_1-S_liq)/(S_vap-S_liq);
// The enthalpy at exit to be determined. At 10 kPa
H_liq_1 = 191.83;//[kJ/kg]
H_vap_1 = 2584.7;//[kJ/kg]
// At 15 kPa
H_liq_2 = 225.94;//[kJ/kg]
H_vap_2 = 2599.1;//[kJ/kg]
// Therfore at P_2
H_liq = H_liq_1 + ((H_liq_2-H_liq_1)/(15-10))*(P_2-10);
H_vap = H_vap_1 + ((H_vap_2-H_vap_1)/(15-10))*(P_2-10);

// Enthalpy at state 2
H_2_s = H_liq*(1-x_2) + x_2*H_vap;//[kJ/kg]
W = m*(H_1 - H_2_s);//[kW]

printf(" (1).The power output is %f kW\n\n",W);

//(2)
// If the process is 80 % efficient the enthalpy change is
// H_1 - H_2_a = eff*(H_1 - H_2_s)
H_2_a = H_1 - (0.8*(H_1 - H_2_s));

// Now under these conditions temperature and entropy have to be determined. From superheated steam tables,as reported in the book
// At 10 kPa and 100 C
H_2_1 = 2687.5;//[kJ/kg]
S_2_1 = 8.4479;//[kJ/kg-k]
// At 10 kPa and 150 C
H_2_2 = 2783.0;//[kJ/kg]
S_2_2 = 8.6882;//[kJ/kg-k]
// At 50 kPa and 100 C
H_3_1 = 2682.5;//[kJ/kg]
S_3_1 = 7.6947;//[kJ/kg-k]
// At 50 kPa and 150 C
H_4_1 = 2780.1;//[kJ/kg]
S_4_1 = 7.9401;//[kJ/kg-k]
// Therefore at P_2 and 100 C
H_prime_1 = H_2_1 + ((H_3_1-H_2_1)/(50-10))*(P_2-10);//[kJ/kg]
S_prime_1 = S_2_1 + ((S_3_1-S_2_1)/(50-10))*(P_2-10);//[kJ/kg-K]
// Therefore at P_2 and 150 C
H_prime_2 = H_2_2 + ((H_4_1-H_2_2)/(50-10))*(P_2-10);//[kJ/kg]
S_prime_2 = S_2_2 + ((S_4_1-S_2_2)/(50-10))*(P_2-10);//[kJ/kg-K]

// Enthalpy at exit is H_2_a. So at this condition temperature can be nom be determined
T_exit = ((H_2_a - H_prime_1)/(H_prime_2 - H_prime_1))/(150-100) + 100;//[C]
// The entropy at exit is
S_exit =  ((H_2_a - H_prime_1)/(H_prime_2 - H_prime_1))/(S_prime_2 - S_prime_1) + S_prime_1;//[kJ/kg-K]

printf(" (2).The entropy at exit is %f kJ/kg-K\n",S_exit);
printf("     The temperature of the exit state is %f C\n\n",T_exit);

printf("     The irreversibility is advatageous because the exit steam is superheated and therefore,\n");
printf("     the blades of the turbine are not eroded by water droplets which get formed when the process is isentropic");



