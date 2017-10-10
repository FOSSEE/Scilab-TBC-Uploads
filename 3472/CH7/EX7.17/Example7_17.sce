// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.17 :
// Page number 79
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_tariff_hv = 60.0        // HV supply per kVA per annum(Rs)
kWh_tariff_hv = 3.0/100     // HV supply per kWh annum(Rs)
kVA_tariff_lv = 65.0        // LV supply per kVA per annum(Rs)
kWh_tariff_lv = 3.3/100     // LV supply per kWh annum(Rs)
cost_equip_kVA = 50.0       // Cost of transformers and switchgear per kVA(Rs)
loss_full_load = 0.02       // Full load transformation loss
fixed_charge_per = 0.2      // Fixed charges per annum
no_week = 50.0              // Number of working weeks in a year

// Calculations
rating_equip = 1000/(1-loss_full_load)          // Rating of transformer and switchgear(kVA)
cost_equip = cost_equip_kVA*rating_equip        // Cost of transformers and switchgear(Rs)
fixed_charge = fixed_charge_per*cost_equip      // Fixed charges per annum on HV plant(Rs)
X = poly(0,"X")                                 // Number of working hours per week
units_consumed = (no_week*X)*1000.0             // Yearly units consumed by load
total_units = units_consumed/(1-loss_full_load) // Total units to be paid on HV supply
// Case(a)
annual_cost_hv = (kVA_tariff_hv*rating_equip)+(kWh_tariff_hv*cost_equip*X)+fixed_charge   // Annual cost(Rs)
// Case(b)
annual_cost_lv = (kVA_tariff_lv*1000.0)+(kWh_tariff_lv*units_consumed)     // Annual cost(Rs)
p = annual_cost_hv-annual_cost_lv                                          // Finding unknown value i.e working hours in terms of X
x = roots(p)                                    // Finding unknown value i.e working hours

// Results
disp("PART I - EXAMPLE : 7.17 : SOLUTION :-")
printf("\nAbove %.1f working hours per week the H.V supply is cheaper ", x)
