// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 13

clear ;clc;

//Given data
V2_1 = 2        //ratio V2 and V1 volumes
V3_2 = 2        //ratio V3 and V2 volumes
P1 = 1          //initial pressure in MPa
T1 = 300        //initial temperature in kelvin
R = 8.314       //gas constant J/K/mol

//Calculate work done by gas

// At constant pressure process
// W1 = integrate('P1','V',1,2) = P1*(V2-V1) = P1*V1
W1 = R*T1

// V2/T2 = V1/T1 => T2 = T1*V2/V1
T2 = 2 * T1       //Temperature after heating till expansion of V2

// At constant temperature process
// W2 = integrate('P','V',1,2) = integrate('R*T/V','V',2,3) = R*T2*log(V3/V2)

W2 = R*T2*log(V3_2)

W = (W1 + W2)/1000                  //Total work done in kJ


// Results
mprintf('Work done by gas = %5.3f kJ', W)
