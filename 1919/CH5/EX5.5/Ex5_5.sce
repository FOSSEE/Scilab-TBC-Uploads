
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 5

clear ;clc;

//Given data
n = 0.6      //n = efficiency of carnot engine
COP_R =  5   //TH = High  temperature of reservoir

// To find the energy absorbed from the cold body by the refrigerator for each kJ
QL_Q1 = n * COP_R;      // energy in kJ
// n = W/Q1 => W = n*Q1
// COP_R = QL/W => W = QL/COP_R
// n*Q1 = QL/COP_R => QL/Q1 = n * COP_R

// Results
mprintf('The energy absorbed from the cold body by the refrigerator for each kJ = %1.0f kJ', QL_Q1)
