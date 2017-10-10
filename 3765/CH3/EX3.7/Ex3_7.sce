clc
// Example 3.7.py
// For the normal shock that occurs in front of the pitot tube in Example 3.6, 
// calculate the entropy change across the shock. 


// Variable declaration
M1 = 2.34          // mach number from example 3.6
R = 1716.0         // gas constant (ft lbf/slug/R) 

// Calculations 
// subscript 2 means downstream of the shock

po2_by_po1 = 0.5615       // from shock table A2 for mach M1
//
dels = -R*log(po2_by_po1) // s2 - s1 (in lb/slug R)

// Result 
printf("\n Change is entropy is %.1f lb/slug R", dels)

