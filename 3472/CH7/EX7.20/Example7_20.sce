// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.20 :
// Page number 81
clear ; clc ; close ; // Clear the work space and console

// Given data
h = 30.0                 // Mean head(m)
area_catch = 250.0       // Catchment area(Square km)
average_rain = 1.25      // Average rainfall per annum(m)
utilized_rain = 0.7      // Rainfall utilized
LF = 0.8                 // Expected load factor
n_turbine = 0.9          // Mechanical efficiency of turbine
n_gen = 0.95             // Efficiency of generator

// Calculations
water_avail = utilized_rain*area_catch*10**6*average_rain     // Water available(m^3)
sec_year = 365.0*24*60*60                                     // Total seconds in a year
Q = water_avail/sec_year                                      // Quantity available per second(m^3) i.e Discharge(m^3/sec)
w = 1000.0                                                    // Density of water(kg/m^3)
n = n_turbine*n_gen                                           // Overall efficiency
P = 0.736/75*Q*w*h*n                                          // Average output of generator units(kW)
rating_gen = P/LF                                             // Rating of generator(kW)
rating_gen_each = rating_gen/2.0                              // Rating of each generator(kW)
rating_turbine = rating_gen/2*(1/(0.736*n_gen))               // Rating of each turbine(metric hp)

// Results
disp("PART I - EXAMPLE : 7.20 : SOLUTION :-")
printf("\nChoice of units are:")
printf("\n  2 generators each having maximum rating of %.f kW ", rating_gen_each)
printf("\n  2 propeller turbines each having maximum rating of %.f metric hp \n", rating_turbine)
printf("\nNOTE: Changes in obtained answer from that of textbook answer is due to more precision here')
