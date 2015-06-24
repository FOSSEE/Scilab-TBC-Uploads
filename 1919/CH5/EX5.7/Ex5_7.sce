
// Theory and Problems of Thermodynamics
// Chapter 5
// Second law of Thermodynamics
// Example 7

clear ;clc;

//Given data
T1 = 300                    // ambient atmosphere temperature in K
T2 = 600                    // reservoir temperature in K
TR = 240                    // refrigerator temperature in K


// Calculations
n = 1 - T2/T1
// n = W/Q1 => W = 0.5*Q1
// Q2 = Q1-W = 0.5*Q1

COP_R = TR/(T1-TR)

//COP_R = QL/W
//QL = 4*W = 4*(0.5*Q1) = 2*Q1
//QH = QL+W = 2*Q1 + 0.5*Q1 = 2.5Q1
// Energy rejected to the ambient temperature 
// Q2 + QH = 0.5*Q1+2.5*Q1 = 3*Q1
// Hence, (Q2 + QH)/Q1 = 3

mprintf('The ratio of energy rejected by both the devices to the ambient atmosphere \n to the energy absorbed by the engine from the reservoir at 600K is 3')




