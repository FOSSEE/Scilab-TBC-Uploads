
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 9

clear ;clc;

//Given data
Q = 5 // rate of energy losses in W per degree celsius
TL = 1e-6       // lowest temperature reported in K
TH = 313.15     // ambient temperature during summer in K

// Summer: Device is used as refrigerator
QL = Q*(TH-TL)   // Total heat loss to surroundings
// COP_HP = QH/W = TL/(TH-TL)
W = QL * (TH-TL)/TL // Power required in W
W = W/1e9;          // units conversion from W to GW
mprintf('The minimum power required to operate a refrigerator to maintain the sample at the required temperature = %5.2f GW', W)


