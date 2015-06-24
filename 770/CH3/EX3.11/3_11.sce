clear;
clc;

//Example - 3.11
//Page number - 97
printf("Example - 3.11 and Page number - 97\n\n");

//Given
n = 1.5;// - ratio of heat capacities
T_1 = 500;//[K] - Initial temperature
T_2 = 1000;//[K] - Final temperature
P_1 = 1;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant

// The compression path is given by, P*V^(1.5) = constant
// P*(R*T/P)^(1.5) = constant
// P1^(-0.5)*T1^(1.5) = P2^(-0.5)*T2^(1.5)
P_2 = P_1*(T_1/T_2)^(-3);//[Pa]
P_2_final = P_2*10^(-5);//[bar] - Final pressure in bar
printf(" The final pressure is %f bar\n",P_2_final);

// From first law q - w = delta(U). 
// First w and delta(U) are calculated and thereafter heat exchange is determined.
V_1 = R*T_1/P_1;//[m^(3)/mol] - Initial volume
V_2 = R*T_2/P_2;//[m^(3)/mol] - Final volume
w = ((P_1*V_1)/(n - 1))*(1 - (P_2/P_1)^(1 - 1/n));//[J/mol] - work done

// Mean temperature is given by,
T_mean = (T_1 + T_2)/2;//[K]

//Now, heat capacity at T_mean is given by,
Cp_0 = R*(3.3 + 0.63*10^(-3)*T_mean);//[J/mol*K]
Cv_0 = Cp_0 - R;//[J/mol*K]
//Therefore delta(U) is given by
del_U = Cv_0*(T_2 - T_1);//[J/mol] - Change in internal energy
q = w + del_U;//[J/mol] - heat change
printf(" The amount of heat supplied to the system is %f J/mol\n",q);

