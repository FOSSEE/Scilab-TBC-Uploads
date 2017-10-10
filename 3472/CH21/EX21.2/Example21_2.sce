// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 14: LIGHTNING AND PROTECTION AGAINST OVERVOLTAGES DUE TO LIGHTNING

// EXAMPLE : 14.2 :
// Page number 383
clear ; clc ; close ; // Clear the work space and console

// Given data
rating = 5000.0       // Rating of transformer(kVA)
V_hv = 66.0           // HV voltage(kV)
V_lv = 11.0           // LV voltage(kV)
V = 66.0              // System voltage(kV)
fluctuation = 0.1     // Voltage fluctuations
BIL = 350.0           // BIL for 66kV(kV)
dynamic_ov = 1.3      // Dynamic over-voltage = 1.3*system operating voltage
V_power_freq = 1.5    // Power frequency breakdown voltage of arrester = 1.5*arrester rating(kV)
lower_limit = 0.05    // Margin of lower limit of arrester rating

// Calculation & Result
disp("PART II - EXAMPLE : 14.2 : SOLUTION :-")
V_rating = V*(1+fluctuation)*0.8*(1+lower_limit)          // Voltage rating of arrester(kV)
if(round(V_rating)==51) then
    V_rating_choosen = 50.0                               // Arrester rating choosen(kV)
    V_discharge = 176.0                                   // Discharge voltage for 50kV arrester(kV)
    protective_margin = BIL-V_discharge                   // Protective margin available(kV)
    V_power_frequency_bd = V_rating_choosen*V_power_freq  // Power frequency breakdown voltage(kV)
    Over_voltage_dynamic = dynamic_ov*V/3**0.5            // Dynamic overvoltage(kV)
    if(V_power_frequency_bd>Over_voltage_dynamic) then
        printf("\nFirst arrester with rating 50 kV (rms) & discharge voltage 176 kV chosen is suitable")
    end
elseif(round(V_rating)==61) then
    V_rating_choosen = 60.0                               // Arrester rating choosen(kV)
    V_discharge = 220.0                                   // Discharge voltage for 50kV arrester(kV)
    protective_margin = BIL-V_discharge                   // Protective margin available(kV)
    V_power_frequency_bd = V_rating_choosen*V_power_freq  // Power frequency breakdown voltage(kV)
    Over_voltage_dynamic = dynamic_ov*V/3**0.5            // Dynamic overvoltage(kV)
    if(V_power_frequency_bd>Over_voltage_dynamic)
        printf("\nSecond arrester with rating 60 kV (rms) & discharge voltage 220 kV chosen is suitable")
    end
else(round(V_rating)==74) then
    V_rating_choosen = 73.0                               // Arrester rating choosen(kV)
    V_discharge = 264.0                                   // Discharge voltage for 50kV arrester(kV)
    protective_margin = BIL-V_discharge                   // Protective margin available(kV)
    V_power_frequency_bd = V_rating_choosen*V_power_freq  // Power frequency breakdown voltage(kV)
    Over_voltage_dynamic = dynamic_ov*V/3**0.5            // Dynamic overvoltage(kV)
    if(V_power_frequency_bd>Over_voltage_dynamic) then
        printf("\nThird arrester with rating 73 kV (rms) & discharge voltage 264 kV chosen is suitable")
    end
end
