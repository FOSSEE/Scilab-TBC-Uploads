// Scilab Code Ex3.3: Page:133 (2011) 
clc;clear;
m_H = 2;    // Gram molecular mass of hydrogen, g
m_O = 32;   // Gram molecular mass of oxygen, g
k_B = 1.38e-23;....// Boltzmann constant, J/K 
v_avO = 1;....// For simplicity average speed of oxygen gas molecule is assumed to be unity, m/s
v_avH = 2*v_avO;....// The average speed of hydrrogen gas molecule, m/s
T_O = 300;  // Temperature of oxygen gas, K
// As v_avO/v_av_H = sqrt(T_O/T_H)*sqrt(m_H/m_O), solving for T_H
T_H = (v_avH/v_avO*sqrt(m_H/m_O)*sqrt(T_O))^2; // Temperature at which the average speed of hydrogen gas molecules is the same as that of oxygen gas molecules, K
printf("\nTemperature at which the average speed of hydrogen gas molecules is the same as that of oxygen gas molecules at 300 K = %2d", T_H); 

// Result
// Temperature at which the average speed of hydrogen gas molecules is the same as that of oxygen gas molecules at 300 K = 75 





