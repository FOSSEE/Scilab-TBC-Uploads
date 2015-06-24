// Scilab code Ex7.12: Pg:307 (2008)
clc;clear;
c = 3e+08;    // Velocity of light, m/s
delta_m =0.1/100*1;    // Mass lost in one kg of substance, kg
delta_E = delta_m*c^2;    // Energy liberated by the fission of one kg of substance, joule
// Since 1kWh = 1000 watt*3600 sec = 3.6e+06 joule
delta_E = delta_m*c^2/3.6e+06;    // Energy liberated by the fission of one kg of substance, kWh
printf("\nThe energy liberated by the fission of one kg of substance = %3.2e kWh", delta_E);

// Result 
// The energy liberated by the fission of one kg of substance = 2.50e+007 kWh 