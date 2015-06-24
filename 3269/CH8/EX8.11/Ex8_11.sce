// Example 8.11
clear all;
clc;

// Given data
m_lbar = 0.457;                        // Average linear density of UO2 in lb/ft
sigma = 0.0122;                        // Standard deviation of set of measured linear densities of UO2
// Calculation
F_Eml = 1+(3*sigma)/m_lbar;
printf(" \n Engineering subfactor for the amount of fissile material = %.2f \n",F_Eml);

