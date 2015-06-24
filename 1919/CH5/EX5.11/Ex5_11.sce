
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 11

clear ;clc;

//Given data
T1 = 300             // Temperature of first reservoir in K
T2 = 400             // Temperature of second reservoir in K
T3 = 1200            // Temperature of third  reservoir in K
Q3 = 1200            // heat abosrbed in third  reservoir in kJ
QT = 400             // energy delivered from the heat engine in kJ

// Calculations
// First law of thermodynamics gives
// Q1 + Q2 + Q3 = QT   => Q1 + Q2 = -800
// Clausis inequality gives
// Q1/T1 + Q2/T2 + Q3/T3 = 0   => 4Q1 + 3Q2 = -1200

// Solving the two equations by using AX = B
A = [1,1; 4,3];         // coefficent matrix of two equations
B = [-800; -1200]       // costant matrix of two equations
X = A\B

// Output Results
mprintf('The amount of energy absorbed as heat by engine from reservoir at 300K = %4.0f kJ' ,X(1))
mprintf('\n The amount of energy rejected as heat by engine from reservoir at 400K = %4.0f kJ' ,-X(2))

