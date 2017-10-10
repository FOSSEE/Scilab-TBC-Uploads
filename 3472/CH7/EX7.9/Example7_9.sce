// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.9 :
// Page number 75-76
clear ; clc ; close ; // Clear the work space and console

// Given data
MD = 10000.0        // Maximum demand(kW)
load_1 = 2000.0     // Load from 11 PM-6 AM(kW)
t_1 = 7.0           // Time from 11 PM-6 AM(hour)
load_2 = 3500.0     // Load from 6 AM-8 AM(kW)
t_2 = 2.0           // Time from 6 AM-8 AM(hour)
load_3 = 8000.0     // Load from 8 AM-12 Noon(kW)
t_3 = 4.0           // Time from 8 AM-12 Noon(hour)
load_4 = 3000.0     // Load from 12 Noon-1 PM(kW)
t_4 = 1.0           // Time from 12 Noon-1 PM(hour)
load_5 = 7500.0     // Load from 1 PM-5 PM(kW)
t_5 = 4.0           // Time from 1 PM-5 PM(hour)
load_6 = 8500.0     // Load from 5 PM-7 PM(kW)
t_6 = 2.0           // Time from 5 PM-7 PM(hour)
load_7 = 10000.0    // Load from 7 PM-9 PM(kW)
t_7 = 2.0           // Time from 7 PM-9 PM(hour)
load_8 = 4500.0     // Load from 9 PM-11 PM(kW)
t_8 = 2.0           // Time from 9 PM-11 PM(hour)

// Calculations
energy_gen = (load_1*t_1)+(load_2*t_2)+(load_3*t_3)+(load_4*t_4)+(load_5*t_5)+(load_6*t_6)+(load_7*t_7)+(load_8*t_8) // Energy generated during 24 hours(kWh)
LF = energy_gen/(MD*24.0)                            // Load factor
no_units = 3.0                                       // Number of generating set
cap_1 = 5000.0                                       // Capacity of first generating unit(kW)
cap_2 = 3000.0                                       // Capacity of second generating unit(kW)
cap_3 = 2000.0                                       // Capacity of third generating unit(kW)
cap_reserve = cap_1                                  // Reserve capacity(kW) i.e largest size of generating unit
cap_installed = cap_1+cap_2+cap_3+cap_reserve        // Installed capacity(kW)
cap_factor = energy_gen/(cap_installed*24.0)         // Plant capacity factor
cap_plant = cap_3*t_1+(cap_3+cap_2)*t_2+(cap_2+cap_1)*t_3+cap_2*t_4+(cap_2+cap_1)*t_5+(cap_3+cap_2+cap_1)*t_6+(cap_3+cap_2+cap_1)*t_7+cap_1*t_8 // Capacity of plant running actually(kWh)
use_factor = energy_gen/cap_plant                    // Plant use factor

// Results
disp("PART I - EXAMPLE : 7.9 : SOLUTION :-")
printf("\nNumber of generator units = %.f", no_units)
printf("\nSize of generator units required are %.f kW, %.f kW and %.f kW", cap_1,cap_2,cap_3)
printf("\nReserve plant capacity = %.f kW", cap_reserve)
printf("\nLoad factor = %.2f = %.f percent", LF,LF*100)
printf("\nPlant capacity factor = %.4f = %.2f percent", cap_factor,cap_factor*100)
printf("\nPlant use factor = %.3f = %.1f percent", use_factor,use_factor*100)
printf("\n\nNOTE: Capacity of plant is directly taken & operating schedule is not displayed here")

