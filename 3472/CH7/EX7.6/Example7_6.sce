// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.6 :
// Page number 74
clear ; clc ; close ; // Clear the work space and console

// Given data
power_del_1 = 1000.0    // Power delivered by station(MW)
time_1 = 2.0            // Time for which power is delivered(hours)
power_del_2 = 500.0     // Power delivered by station(MW)
time_2 = 6.0            // Time for which power is delivered(hours)
days_maint = 60.0       // Maintenance days
max_gen_cap = 1000.0    // Maximum generating capacity(MW)

// Calculations
energy_sup_day = (power_del_1*time_1)+(power_del_2*time_2)   // Energy supplied for each working day(MWh)
days_total = 365.0                                           // Total days in a year
days_op = days_total-days_maint                              // Operating days of station in a year
energy_sup_year = energy_sup_day*days_op                     // Energy supplied per year(MWh)
hours_day = 24.0                                             // Total hours in a day
working_hours = days_op*hours_day                            // Hour of working in a year
LF = energy_sup_year*100/(max_gen_cap*working_hours)         // Annual load factor(%)

// Results
disp("PART I - EXAMPLE : 7.6 : SOLUTION :-")
printf("\nAnnual load factor = %.1f percent", LF)
