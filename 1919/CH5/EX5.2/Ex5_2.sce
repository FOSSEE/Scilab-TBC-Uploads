
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 2

clear ;clc;

//Given data
Q1 = 1000   //Q1 = Heat absorbed in kJ
T1 = 1000    //T1 = Reservoir temperature in K
// in text book T1 is given as 500K but used as 1000K
T2 = 300    //T2 = Sink temperature in K

// To find the efficiency of the engine and the energy rejected to the sink
n  = 1 - T2/T1;          // thermal efficiency 
W  = n*Q1;               // work done in kJ
Q2 = Q1 - W;             // Energy rejected to sink in kJ

// Results
mprintf('Efficiency of the engine = %2.1f ', n)
mprintf('\n Energy rejected to the sink = %3.0f kJ', Q2)
