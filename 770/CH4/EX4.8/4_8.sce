clear;
clc;

//Example - 4.8
//Page number - 157
printf("Example - 4.8 and Page number - 157\n\n");

//Given
P_1 = 40;//[bar] - Initial pressure
T_1 = 500;//[C] - Initial temperature
Vel_1 = 140;//[m/s] - Initial velocity
T_2 = 100;//[C] - Final temperature
Vel_2 = 80;//[m/s] - Final velocity
W = 746.0;//[kJ/kg] - Work output

// (a).
// From steam table as reported in the book
H_1 = 3445.3;//[kJ/kg]
H_2 = 2676.1;//[kJ/kg]
S_1 = 7.0901;//[kJ/kh-K]
S_2 = 7.3549;//[kJ/kg-K]

// The temperature at which heat exchange take place is given by 
T_b =(T_1 + T_2)/2 + 273.15;//[K]

// From first law in a control volume 
// q - W = delta_H + (delta_V^(2))/2 , therefore
q = W*10^(3) + (H_2 - H_1)*10^(3) + (Vel_2^(2) - Vel_1^(2))/2;//[J/kg]
q = q*10^(-3);//[kJ/kg]

S_gen = (S_2 - S_1) - (q/T_b);//[kJ/kg-K]

printf(" (a).The specific entropy production within turbine is %f kJ/kg-K\n",S_gen);

//(b)
// If control volume is too large to include the turbine and the environment then T_b becomes equal to 289 K. In this case
T_b_prime = 298;//[K]

// The entropy change of the sysytem is given by 
//delta_S = q/T_b + S_gen
S_gen = (S_2 - S_1) - (q/T_b_prime);//[kJ/kg-K]

printf(" (b).The specific entropy production within turbine is %f kJ/kg-K",S_gen);

// In the first part only irreversibilities within the turbine are evaluated
// whereas in part (2) irreversible heat transfer between the turbine cover and environment  are also included.

