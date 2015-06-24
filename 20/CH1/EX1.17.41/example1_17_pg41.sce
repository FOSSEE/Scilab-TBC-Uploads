// Example1_17_pg41.sce
// To find the efficiency at different loads
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 41


clear; clc; close;

// Given data
va = 50e+3; // VA rating of transformer, VA
v1 = 2200; // Volts
v2 = 220; // Volts
f = 60; // Frequency, Hz
core_loss = 350; // Power loss, watts
cu_loss = 630; // Power loss, watts
pf0 = 1;
pf1 = 0.8;

// Calculations
turns_ratio = v1/v2;
upf_full_load_eff = (va*pf0/(va*pf0 + core_loss + cu_loss))*100; // Full Load Efficiency at upf
upf_three_fourth_eff = ((0.75*va*pf0)/(0.75*va*pf0 + core_loss + (0.75^2)*cu_loss))*100; // Efficiency at three-fourth load at upf
full_load_eff = ((va*pf1)/(va*pf1 + core_loss + cu_loss))*100; // Efficiency at full load at 0.8pf
three_fourth_eff = ((0.75*va*pf1)/(0.75*va*pf1 + core_loss + (0.75^2)*cu_loss))*100; // Efficiency at three-fourth load at 0.8pf

printf('Efficiency at Full load & unity power factor = %.1f %% \n ',upf_full_load_eff);
printf('Efficiency at Three-fourth the full load & unity power factor = %.1f %%\n ',upf_three_fourth_eff);
printf('Efficiency at Full load efficiency at 80%% power factor = %.1f %%\n ',full_load_eff);
printf('Efficiency at three-fourth load efficiency at 80%% power factor = %.1f %%\n ',three_fourth_eff);

// Result
// Efficiency at Full load & unity power factor = 98.1 % 
// Efficiency at Three-fourth the full load & unity power factor = 98.2 %
// Efficiency at Full load efficiency at 80% power factor = 97.6 %
// Efficiency at three-fourth load efficiency at 80% power factor = 97.7 %
