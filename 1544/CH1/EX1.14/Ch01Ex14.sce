// Scilab code Ex1.14: Pg 20 (2008)
clc; clear;
P = 12.5;    // Power of the machine, kW
t = 8.5;    // Time for which the machine is operated, h
W = P*t;         // Electric energy, kWh
// Cost per unit = 7.902 p, therefore calulating the cost of 106.25 units
cost = ( W*7.902 );       // Cost for operating machine, p
printf("\nThe cost of operating the machine = %4.2f pounds", cost*1e-02)

// Result
// The cost of operating the machine = 8.40 pounds
