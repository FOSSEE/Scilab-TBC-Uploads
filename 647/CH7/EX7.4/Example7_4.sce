clear;
clc;

// Example: 7.4
// Page: 268

printf("Example: 7.4 - Page: 268\n\n");

// Solution

//*****Data******//
P1 = 100;// [kPa]
T1 = 320;// [K]
P2 = 600;// [kPa]
T2 = 430;// [K]
m_dot = 0.03;// [kg/s]
Qout = 15;// [kJ/kg]
//*************//

// The energy balance around the compressor:
// dE_System/dt = Ein - Eout
// Since it is a steady state process:
// dE_Sysytem/dt = 0
// Ein = Eout
// Win + m_dot*H1 = Qout + m_dot*H2
// Since, Qout = Qout/m
// Win = m_dot*(Qout + (H2 - H1))
// From enthalpy chart of air:
H1 = 320.20;// [Enthalpy of air at 320 K, kJ/kg]
H2 = 431.43;// [Enthalpy of air at 430 K, kJ/kg]
Win = m_dot*(Qout + (H2 - H1));// [kW]
printf("Power Requirement of the compressor is %.2f kW",Win);