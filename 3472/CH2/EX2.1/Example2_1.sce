// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 2: THERMAL STATIONS

// EXAMPLE : 2.1 :
// Page number 25-26
clear ; clc ; close ; // Clear the work space and console

//Given data
M = 15000.0+10.0         // Water evaporated(kg)
C = 5000.0+5.0           // Coal consumption(kg)
time = 8.0               // Generation shift time(hours)

//Calculations
//Case(a)
M1 = M-15000.0 
C1 = C-5000.0 
M_C = M1/C1                                        // Limiting value of water evaporation(kg)
//Case(b)
kWh = 0                                            // Station output at no load
consumption_noload = 5000+5*kWh                    // Coal consumption at no load(kg)
consumption_noload_hr = consumption_noload/time    // Coal consumption per hour(kg)

//Results
disp("PART I - EXAMPLE : 2.1 : SOLUTION :-")
printf("\nCase(a): Limiting value of water evaporation per kg of coal consumed, M/C = %.f kg", M_C)
printf("\nCase(b): Coal per hour for running station at no load = %.f kg\n", consumption_noload_hr)
