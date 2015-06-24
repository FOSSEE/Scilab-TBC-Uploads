// Example 8.2
clear all;
clc;

// Given data
P = 6.895;                                // Pressure of steam in MPa
w = 2.93*10^6;                            // Steam flow rate in kg/hr
Tin = 190.6+273;                          // Inlet temperature in Kelvin

// 1.
// Using the data from Table IV.2 
// Result
printf(" \n At a pressure of 6.895 MPa the steam temeperature is 284.86 C \n");

// 2. 
// Using the data from Table IV.2 
hout = 2773.2;                            // Enthalpy of spent steam in kJ/kg
// Using the data from Table IV.1 
hin = 807.8;                              // Enthalpy of inlet steam at Tin in kJ/kg
// Calculation
q = w*(hout-hin);
// Result
printf(" \n Reactor power is %.3E J/hr or %d MW \n",q,q/(3600*1000));
