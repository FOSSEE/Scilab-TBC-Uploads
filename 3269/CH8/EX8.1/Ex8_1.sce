// Example 8.1
clear all;
clc;

// Given data
P = 3025;                                 // Reactor thermal power in MW
w = 136.3*10^6;                           // Coolant flow rate in lb/hr
// According to Table 1.9
// 1 kW = 3412 Btu/hr
q = P*1000*3412;                         // Converting into Btu/hr
delh = q/w;                              // Rise in enthalpy
// Using the data from Table IV.1 for temperature 542.6 F
hin = 539.7;                              // Enthalpy of input water in Btu/lb
// Calculation
hout = hin+delh;                          // Enthalpy of released water in Btu/lb
// From Table IV.1 
// Result
printf(" \n %3.1f Btu/lb corresponds to 599 F coolant water temperature. \n",hout);

