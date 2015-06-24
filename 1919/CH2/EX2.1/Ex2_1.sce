// Theory and Problems of Thermodynamics
// Chapter 2
// First Law of Thermodynamics
// Example 1

clear ;clc;

//Given data
// a system is taken from state 1 to state 2 along a path A
Q_A_21  = 200   //heat energy received in kJ
W_A_21  = 100   //work done  in kJ
// if the system is taken different path from state 2 to state 1 
W_A_12  = -150   //spend work on system 
// Path C
Q_C_12 = 0;                     // for adiabatic Q = 0


//Path A
U_A_21 = Q_A_21 - W_A_21;     // U_A_21 = U2 - U1 = Q - W

// determine heat interaction along path B
U_B_12 = - U_A_21;               // U_B_12 = U1 - U2 = -(U2 - U1)
Q_A_12 = U_B_12 + W_A_12        // U1 - U2 = Q - W

// determine work done on system in surroundings in adiabatic path C
U_C_12 = U_B_12;            
W_C_12 = Q_C_12 - U_C_12;       // work done

// Results
mprintf('Heat interaction along path B = %3.0f kJ', Q_A_12)
mprintf('\n The work done on surroundings in adiabatic path B = %3.0f kJ', W_C_12)
