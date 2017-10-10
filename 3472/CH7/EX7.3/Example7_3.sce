// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.3 :
// Page number 73
clear ; clc ; close ; // Clear the work space and console

// Given data
cap_baseload = 400.0*10**3       // Installed capacity of base load plant(kW)
cap_standby = 50.0*10**3         // Installed capacity of standby unit(kW)
output_baseload = 101.0*10**6    // Annual baseload station output(kWh)
output_standby = 87.35*10**6     // Annual standby station output(kWh)
peakload_standby = 120.0*10**3   // Peak load on standby station(kW)
hours_use = 3000.0               // Hours of standby station use/year(hrs)

// Calculations
// Case(i)
LF_1 = output_standby*100/(peakload_standby*hours_use)     // Annual load factor(%)
hours_year = 365.0*24                                      // Total hours in a year
CF_1 = output_standby*100/(cap_standby*hours_year)         // Annual capacity factor(%)
// Case(ii)
peakload_baseload = peakload_standby                       // Peak load on baseload station(kW)
LF_2 = output_baseload*100/(peakload_baseload*hours_use)   // Annual load factor on baseload station(%)
hours_year = 365.0*24                                      // Total hours in a year
CF_2 = output_baseload*100/(cap_baseload*hours_year)       // Annual capacity factor on baseload station(%)

// Results
disp("PART I - EXAMPLE : 7.3 : SOLUTION :-")
printf("\nCase(i) : Standby Station")
printf("\n          Annual load factor = %.2f percent", LF_1)
printf("\n          Annual capacity factor = %.2f percent\n", CF_1)
printf("\nCase(ii): Base load Station")
printf("\n          Annual load factor = %.2f percent", LF_2)
printf("\n          Annual capacity factor = %.2f percent\n", CF_2)
printf("\nNOTE: Incomplete solution in the textbook") ;
