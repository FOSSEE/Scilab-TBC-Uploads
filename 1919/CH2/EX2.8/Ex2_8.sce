// Theory and Problems of Thermodynamics
// Chapter 2
// First Law of Thermodynamics
// Example 8

clear ;clc;

//Given data
V1 = 1            // one compartment volume in m^3 
T1 = 300          // first compartment temperature in K
P1 = 0.1          // first compartment pressure in MPa
V2 = 2            // second compartment volume in m^3 
T2 = 1000         // second compartment temperature in K
P2 = 1            // second compartment pressure in MPa
R = 8.314         // gas constant in J/K
del_U = 0;        // tank is rigid and insulated W = 0 & Q = 0

// determine final temperature and pressure of gas if the partion between 
//               the two compartment is ruptured
P1 = P1 * 1e6      // units conversion MPa to Pa
P2 = P2 * 1e6      // units conversion MPa to Pa

N1 = P1 * V1 / (R * T1);        // quantity of gas in first compartment 
N2 = P2 * V2 / (R * T2);        // quantity of gas in second compartment

T_f = (T1 * N1 + T2 * N2)/ (N1 + N2)        //Final state Temperature

P_f = (N1+N2)*R*T_f/(V1+V2);                //Final stste Pressure
P_f = P_f/1000000                           // Units conversion Pa to MPa

// Results
mprintf('Final state Temperature = %3.0f K', T_f)
mprintf('\n Final state pressure = %2.1f MPa', P_f)


