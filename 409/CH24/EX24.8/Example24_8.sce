clear ;
clc;
// Example 24.8
printf('Example 24.8\n\n');
//page no. 741
// Solution Fig. E24.8

// Pick the system of whole process as shown in above figure of book
// Given
Q = 1.63 ;// Heat loss from the process - [ kW ]
m_bm = 150 ;// Mass flow rate of biological media into the sterlizer -[kg/min]
T_bm = 50 +273 ;// Temperature of biological media into the sterlizer - [K]
T_sm = 75 + 273 ;// Temperature of sterlize media out of the sterlizer - [K]
P_ss = 300 ;// Pressure of satureted steam entering the steam heater - [kPa]
P_sc = 300 ;// Pressure of satureted condensate exiting the steam heater - [kPa]

// Additional data of change in enthalpy is obtained from the steam table, according to book the data are
H_w1 = 207.5 ;// Change in specific enthalpy of  water at 50 degree C - [kJ/kg]
H_w2 = 310.3 ;// Change in specific enthalpy of  water at 75 degree C - [kJ/kg]
H_ss = 2724.9 ;//Change in specific enthalpy of  satureted steam entering the steam heater at 300 kPa - [kJ/kg]
H_sc = 561.2 ;//Change in specific enthalpy of  satureted condensate exiting the steam heater at 300 kPa - [kJ/kg]

// Use following conditions to simplify the energy balance
// 1. Proces is in steady state , so change in energy = 0.
// 2. Assume del_KE and del_PE = 0.
// 3. W = 0.
// 4. Assume m1 = m2 = m_stm
// The energy balance reduce to   Q = H_out - H_in  , using it
m_sm = m_bm ;// By material balance -[kg/min]
m_stm = (Q*60 - m_sm*H_w2 + m_bm * H_w1  )/(H_sc - H_ss ) ;// Mass flow rate of steam entering the steam heater - [kg/min]

 printf(' Mass flow rate of steam entering the steam heater is %.2f kg steam/min .\n',m_stm);